vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.showmatch = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.backspace = [[indent,eol,start]]
vim.opt.autoindent = true
vim.opt.copyindent = true
vim.opt.number = true
vim.opt.ruler = true
vim.opt.shiftround = true
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.laststatus = 2
vim.opt.visualbell = true
vim.opt.swapfile = false
vim.opt.signcolumn = 'yes'

vim.cmd.colorscheme('dim')

local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      vim.snippet.expand(args.body)
    end,
  },
  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
      ['<C-e>'] = cmp.mapping.abort(),
      ['<Tab>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
  }, {
    { name = 'buffer' },
  })
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require("lspconfig")
local configs = require("lspconfig.configs")

local lexical_config = {
  filetypes = { "elixir", "eelixir", "heex" },
  cmd = { "/Users/brian/Development/lexical/_build/dev/package/lexical/bin/start_lexical.sh" },
  settings = {},
}

if not configs.lexical then
  configs.lexical = {
    default_config = {
      filetypes = lexical_config.filetypes,
      cmd = lexical_config.cmd,
      root_dir = function(fname)
        return lspconfig.util.root_pattern("mix.exs", ".git")(fname) or vim.loop.os_homedir()
      end,
      -- optional settings
      settings = lexical_config.settings,
    },
  }
end

lspconfig.lexical.setup({capabilities = capabilities})


require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true
  }
}
