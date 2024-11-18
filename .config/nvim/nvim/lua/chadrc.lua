-- -- This file needs to have same structure as nvconfig.lua
-- -- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
-- -- Please read that file to know all available options :(
--
-- ---@type ChadrcConfig
-- local M = {}
--
-- M.base46 = {
-- 	theme = "chadracula",
--
-- 	-- hl_override = {
-- 	-- 	Comment = { italic = true },
-- 	-- 	["@comment"] = { italic = true },
-- 	-- },
-- }
-- local lspconfig = require "lspconfig"
-- lspconfig.jdtls.setup {}
--
-- return M

local M = {}

M.ui = {
  theme = "everblush", -- Or your preferred theme
}

M.plugins = {
  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig", -- example path for custom LSP config
    },
  },
  -- Adding the Tree-sitter plugin configuration
  user = {
    ["nvim-treesitter/nvim-treesitter"] = {
      opts = {
        ensure_installed = { "java", "lua", "python" }, -- Add your desired languages
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false, -- Disable regex highlighting if needed
        },
      },
    },
  },
}

-- Create an autocmd group to avoid duplicate entries
vim.api.nvim_create_augroup("FormatOnSave", { clear = true })

-- Set up the autocmd to format before saving
vim.api.nvim_create_autocmd("BufWritePre", {
  group = "FormatOnSave",
  pattern = "*", -- This applies to all file types
  callback = function()
    -- Call the LSP format function
    vim.lsp.buf.format({ async = true }) -- Use async to not block the saving process
  end,
})


-- -- Custom function to start BrowserSync
-- M.start_browser_sync = function()
--   vim.cmd("split | terminal browser-sync start --server --files 'css/*.css, *.html, js/*.js'")
--   vim.cmd("resize 10") -- Resize the terminal split
-- end
--
-- -- Keybinding to trigger BrowserSync
-- vim.api.nvim_set_keymap("n", "<leader>bs", ":lua require'custom.browser_sync'.start_browser_sync()<CR>",
--   { noremap = true, silent = true })
--
--
--
vim.opt.clipboard = "unnamedplus"
vim.opt.relativenumber = true
return M
