use nvim_oxi::{
    self as nvim,
    api::{self, types::Mode},
};

use crate::keymaps::{KeyMaps, KeymapOption};

pub fn setup() -> Result<(), nvim::api::Error> {
    KeyMaps::new([
        KeymapOption::new("<tab>", Mode::Normal)
            .description("buffer go to next")
            .callback(|_| -> nvim::Result<()> {
                api::command("lua require('ui.tabufline').next()")?;
                Ok(())
            }),
        KeymapOption::new("<S-tab>", Mode::Normal)
            .description("buffer go to prev")
            .callback(|_| -> nvim::Result<()> {
                api::command("lua require('ui.tabufline').prev()")?;
                Ok(())
            }),
    ])
    .setup()
}
