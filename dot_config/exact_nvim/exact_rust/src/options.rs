use std::{env, path::PathBuf};

use color_eyre::eyre;
use nvim_oxi::{self as nvim, Array, api::opts::OptionOpts};

pub fn setup() -> Result<(), nvim::Error> {
    nvim::api::set_option_value("laststatus", 3, &OptionOpts::default())?;
    nvim::api::set_option_value("showmode", false, &OptionOpts::default())?;
    nvim::api::set_option_value("splitkeep", "screen", &OptionOpts::default())?;

    nvim::api::set_option_value("guicursor", "c-i:hor20", &OptionOpts::default())?;
    nvim::api::set_option_value("clipboard", "unnamedplus", &OptionOpts::default())?;
    nvim::api::set_option_value("cursorline", true, &OptionOpts::default())?;
    nvim::api::set_option_value("cursorlineopt", "both", &OptionOpts::default())?;

    // Indenting
    nvim::api::set_option_value("expandtab", true, &OptionOpts::default())?;
    nvim::api::set_option_value("shiftwidth", 2, &OptionOpts::default())?;
    nvim::api::set_option_value("smartindent", true, &OptionOpts::default())?;
    nvim::api::set_option_value("tabstop", 2, &OptionOpts::default())?;
    nvim::api::set_option_value("softtabstop", 2, &OptionOpts::default())?;

    // nvim::api::set_option_value("eob: ", true, &OptionOpts::default())?;
    // nvim::api::command("set shortmess+=sI")?;
    // nvim::api::command("set whichwrap+=~")?;

    nvim::api::set_option_value("ignorecase", true, &OptionOpts::default())?;
    nvim::api::set_option_value("smartcase", true, &OptionOpts::default())?;
    nvim::api::set_option_value("mouse", "a", &OptionOpts::default())?;

    // Numbers
    nvim::api::set_option_value("number", true, &OptionOpts::default())?;
    nvim::api::set_option_value("numberwidth", 2, &OptionOpts::default())?;
    nvim::api::set_option_value("ruler", false, &OptionOpts::default())?;

    nvim::api::set_option_value("signcolumn", "yes", &OptionOpts::default())?;
    nvim::api::set_option_value("splitbelow", true, &OptionOpts::default())?;
    nvim::api::set_option_value("splitright", true, &OptionOpts::default())?;
    nvim::api::set_option_value("timeoutlen", 400, &OptionOpts::default())?;
    nvim::api::set_option_value("undofile", true, &OptionOpts::default())?;
    nvim::api::set_option_value("updatetime", 250, &OptionOpts::default())?;

    nvim::api::set_var("loaded_node_provider", 0)?;
    nvim::api::set_var("loaded_python3_provider", 0)?;
    nvim::api::set_var("loaded_perl_provider", 0)?;
    nvim::api::set_var("loaded_ruby_provider", 0)?;

    Ok(())
}

// fn setup_mason_path() -> eyre::Result<()> {
//     // 1. vim.fn.stdpath("data") を取得
//     // Lua: vim.fn.stdpath("data")
//     let a = Array::from("data".into());
//     let data_path_obj = nvim::api::call_function("stdpath", a);
//
//     let data_path: String = data_path_obj
//         .try_into()
//         .map_err(|_| Error::Other("stdpath('data') returned non-string".into()))?;
//
//     // 2. パスを構築 (PathBuf が OSごとの / や \ を自動処理します)
//     // Lua: stdpath .. "/mason/bin"
//     let mason_bin = PathBuf::from(data_path).join("mason").join("bin");
//
//     // 3. 環境変数 PATH を取得して先頭に追加
//     // Lua: mason_bin .. delim .. vim.env.PATH
//     if let Ok(current_path) = env::var("PATH") {
//         // split_paths / join_paths が OSごとの ; や : を自動処理します
//         let new_paths = std::iter::once(mason_bin).chain(env::split_paths(&current_path));
//
//         let new_path_str = env::join_paths(new_paths)
//             .map_err(|e| Error::Other(format!("Failed to join paths: {}", e).into()))?;
//
//         // 4. 環境変数を更新 (vim.env.PATH = ... と同等)
//         env::set_var("PATH", new_path_str);
//     } else {
//         // PATHが存在しない場合のフォールバック
//         env::set_var("PATH", mason_bin);
//     }
//
//     Ok(())
// }
