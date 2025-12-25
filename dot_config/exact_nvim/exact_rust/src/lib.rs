use nvim_oxi::{self as nvim};

mod keymaps;
mod options;

#[nvim::plugin]
fn nvim_rs() -> nvim::Result<()> {
    keymaps::setup()?;
    options::setup()?;
    Ok(())
}
