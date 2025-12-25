use nvim_oxi::{
    self as nvim,
    api::{self, opts::SetKeymapOpts, types::Mode},
};

mod setup;
pub use setup::setup;

struct KeymapOption {
    key: &'static str,
    mode: Mode,
    description: Option<&'static str>,
    callback: Option<Box<dyn Fn(()) -> nvim::Result<()> + 'static>>,
}

impl KeymapOption {
    fn new(key: &'static str, mode: Mode) -> Self {
        KeymapOption {
            key,
            mode,
            description: None,
            callback: None,
        }
    }

    fn description(mut self, s: &'static str) -> Self {
        self.description = Some(s);
        self
    }

    fn callback<C>(mut self, callback: C) -> Self
    where
        C: Fn(()) -> nvim::Result<()> + 'static,
    {
        self.callback = Some(Box::new(callback));
        self
    }
}

#[derive(Default)]
struct KeyMaps(Vec<KeymapOption>);

impl KeyMaps {
    fn new<T>(keymap_options: T) -> Self
    where
        T: IntoIterator<Item = KeymapOption>,
    {
        KeyMaps(keymap_options.into_iter().collect())
    }

    fn setup(self) -> Result<(), nvim::api::Error> {
        self.0.into_iter().try_for_each(|opt| {
            let mut set_keymap_opts = SetKeymapOpts::builder();

            opt.description.map(|d| set_keymap_opts.desc(d));
            opt.callback.map(|c| set_keymap_opts.callback(c));

            api::set_keymap(opt.mode, opt.key, "", &set_keymap_opts.build())
        })
    }
}
