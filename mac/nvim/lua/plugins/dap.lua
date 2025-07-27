return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "theHamsta/nvim-dap-virtual-text",
    "nvim-neotest/nvim-nio",
  },
  config = function()
    local dap = require("dap")

    -- PHP configuration
    dap.configurations.php = {
      {
        type = 'php',
        request = 'launch',
        name = 'TBS Old API',
        port = 9003,
        pathMappings = {
          ["/var/www/api"] = os.getenv("HOME") .. "/git/tbs_old/Laravel5.7-tbs-api.dev"
        },
        hostname = '0.0.0.0', -- Changed from 'localhost' to listen on all interfaces
        ideKey = "PHPSTORM-OLD-API",
        log = true
      },
      {
        type = 'php',
        request = 'launch',
        name = 'TBS Old App',
        port = 9003,
        pathMappings = {
          ["/var/www/tbsbmk"] = os.getenv("HOME") .. "/git/tbs_old/Laravel5.6-tbsbmk.dev"
        },
        hostname = '0.0.0.0', -- Changed from 'localhost' to listen on all interfaces
        ideKey = "PHPSTORM-OLD-APP",
        log = true
      }
      -- Add more configurations for other services
    }

    -- PHP adapter setup
    dap.adapters.php = {
      type = 'executable',
      command = 'node',
      args = { os.getenv('HOME') .. '/.local/share/nvim/mason/packages/php-debug-adapter/extension/out/phpDebug.js' },
      host = '0.0.0.0', -- Added to listen on all interfaces
      port = 9003 -- Added to explicitly set the port
    }

    -- Setup DAP UI
    local dapui = require("dapui")
    dapui.setup()

    -- Connect DAP UI to DAP events
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end
  end,
} 