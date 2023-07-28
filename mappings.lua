local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui/widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require('dap-go').debug_test()
      end,
      "Debug go test"
    },
    ["<leader>dgl"] = {
      function()
        require('dap-go').debug_test()
      end,
      "Debug last go test"
    }
  }
}

M.vim_go = {
  plugin = true,
  n = {
    ["<leader>Gr"] = {
      "<cmd> GoRun <CR>",
      "Execute current file with go run"
    },
    ["<leader>Gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags"
    },
    ["<leader>Gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags"
    },
    ["<leader>Gmt"] = {
      "<cmd> GoMod tidy <CR>",
      "go mod tidy"
    },
    ["<leader>Gmi"] = {
      "<cmd> GoMod init <CR>",
      "go mod init"
    }
  }
}
return M
