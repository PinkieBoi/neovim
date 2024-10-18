-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    dashboard.section.header.val = {
      [[     ______ _       _    _     ______       _      ]],
      [[     | ___ (_)     | |  (_)    | ___ \     (_)     ]],
      [[     | |_/ /_ _ __ | | ___  ___| |_/ / ___  _      ]],
      [[     |  __/| | '_ \| |/ / |/ _ \ ___ \/ _ \| |     ]],
      [[     | |   | | | | |   <| |  __/ |_/ / (_) | |     ]],
      [[     \_|   |_|_| |_|_|\_\_|\___\____/ \___/|_|     ]],
      [[                                                   ]],
    }
    dashboard.section.buttons.val = {
      dashboard.button('f', '  Find file', ':Telescope find_files <CR>'),
      dashboard.button('e', '  New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button('p', '  Find project', ':Telescope projects <CR>'),
      dashboard.button('r', '  Recently used files', ':Telescope oldfiles <CR>'),
      dashboard.button('t', '󱎸  Find text', ':Telescope live_grep <CR>'),
      dashboard.button('c', '  Configuration', ':e $MYVIMRC <CR>'),
      dashboard.button('q', '  Quit Neovim', ':qa<CR>'),
    }

    local function footer()
      -- NOTE: requires the fortune-mod package to work
      -- local handle = io.popen("fortune")
      -- local fortune = handle:read("*a")
      -- handle:close()
      -- return fortune
      return 'jamesmacpherson.me'
    end

    dashboard.section.footer.val = footer()

    dashboard.section.footer.opts.hl = 'Type'
    dashboard.section.header.opts.hl = 'Include'
    dashboard.section.buttons.opts.hl = 'Keyword'

    dashboard.opts.opts.noautocmd = true
    -- vim.cmd([[autocmd User AlphaReady echo 'ready']])

    alpha.setup(dashboard.opts)
  end,
}
