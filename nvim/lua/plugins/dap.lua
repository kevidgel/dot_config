local lldb_adapter = {
	type = "executable",
	command = "/usr/local/opt/llvm/bin/lldb-vscode", -- adjust as needed, must be absolute path
	name = "lldb",
}

local old_cpp_debug_config = function()
    return {
        name = "RobloxPlayer x64 NoOpt",
        type = "lldb",
        request = "launch",
        program = function ()
            return os.getenv("HOME") .. "/git/game-engine/build/ninja/client/noopt/RobloxMac/RobloxPlayer.app/Contents/MacOS/RobloxPlayer"
        end,
        cwd = os.getenv("HOME") .. '/git/game-engine',
        args = {},
        stopAtEntry = false,
        environment = {},
        externalConsole = false,
    }
end

return {
    "rcarriga/nvim-dap-ui",
    dependencies = {
        {
            "mfussenegger/nvim-dap",
            config = function()
                require('dap').adapters.lldb = lldb_adapter
                require('dap').configurations.cpp = { old_cpp_debug_config() }

                vim.fn.sign_define("DapBreakpoint", { text = "●", texthl = "error", linehl = "", numhl = "" })
                vim.fn.sign_define("DapBreakpointCondition", { text = "●", texthl = "character", linehl = "", numhl = "" })
                vim.fn.sign_define("DapLogPoint", { text = "●", texthl = "class", linehl = "", numhl = "" })
                vim.fn.sign_define("DapBreakpointRejected", { text = "●", texthl = "type", linehl = "", numhl = "" })
            end
        },
    },
    config = function()
        require('dapui').setup()
    end,
    lazy = false,
}
