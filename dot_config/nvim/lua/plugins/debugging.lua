return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "leoluz/nvim-dap-go",
    },
    config = function()
      require("dap-go").setup()
      require("dapui").setup()
      local dap, dapui = require("dap"), require("dapui")
      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end

      vim.keymap.set("n", "<F5>", function()
        require("dap").continue()
      end)
      vim.keymap.set("n", "<F10>", function()
        require("dap").step_over()
      end)
      vim.keymap.set("n", "<F11>", function()
        require("dap").step_into()
      end)
      vim.keymap.set("n", "<F12>", function()
        require("dap").step_out()
      end)
      vim.keymap.set("n", "<Leader>dt", function()
        require("dap").toggle_breakpoint()
      end)
      vim.keymap.set("n", "<Leader>db", function()
        require("dap").set_breakpoint()
      end)
    end,
  },
  { "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } },
}
