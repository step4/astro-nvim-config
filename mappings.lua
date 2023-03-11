-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  i = {
    ["jk"] = { "<ESC>", desc = "Escape insert mode" },
  },
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
      ["gr"] = { "<Plug>ReplaceWithRegisterOperator", desc = "Replace with register" },
      ["<leader>y"] = { '"+y', desc = "yank into clipboard" },
      ["<leader>p"] = { '"+p', desc = "put from clipboard" },
      ["<leader>P"] = { '"+P', desc = "put from clipboard before cursor" },
      ["<leader>grr"] = { '"+<Plug>ReplaceWithRegisterLine', desc = "replace line with register from clipboard" },
      ["<leader>gr"] = { '"+gr', desc = "replace with register from clipboard" },

      ["gR"] = { function() vim.lsp.buf.references() end, desc = "References of current symbol" },
      ["grr"] = { "<Plug>ReplaceWithRegisterLine", desc = "Replace line with register" },
      ["<C-q>"] = false,
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    ["jk"] = false,
  },
  v = {
    ["<leader>y"] = { '"+y', desc = "yank into clipboard" },
    ["<leader>p"] = { '"+p', desc = "put from clipboard" },
    ["<leader>gr"] = { '"+gr', desc = "replace buffer from clipboard" },
    ["gr"] = { "<Plug>ReplaceWithRegisterVisual", desc = "Replace with register" },
  },
}
