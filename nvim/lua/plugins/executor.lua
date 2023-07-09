return {
    "google/executor.nvim",
    dependencies = {
        "MunifTanjim/nui.nvim",
    },
    opts = {
        preset_commands = {
            ["game-engine"] = {
                "ninja -C /Users/stevenlee/git/game-engine/build/ninja/client/noopt/",
                "git rbx configure",
                "git rbx build",
            }
        }
    },
    lazy = false,
}
