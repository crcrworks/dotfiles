return {
  ["rust-analyzer"] = {
    settings = {
      ["rust-analyzer"] = {
        files = {
          excludeDirs = {
            ".direnv",
            ".git",
            "target",
          },
        },
        check = {
          command = "clippy",
          extraArgs = {
            "--no-deps",
          },
        },
      },
    },
  },
}