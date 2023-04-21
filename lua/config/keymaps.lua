-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- some mappings for copying the file name to the clipboard.
-- Convert slashes to backslashes for Windows.
-- if vim.fn.has("win32") then
--   vim.keymap.set(
--     "n",
--     ";cs",
--     vim.cmd('let @*=substitute(expand("%"), "/", "\\", "g")'),
--     { desc = "only file name with extension" }
--   )
--   vim.keymap.set("n", ";cl", vim.cmd('let @*=substitute(expand("%:p"), "/", "\\", "g")'), { desc = "full path" })
--
--   -- This will copy the path in 8.3 short format, for DOS and Windows 9x
--   vim.keymap.set(
--     "n",
--     ";c8",
--     vim.cmd('let @*=substitute(expand("%:p:8"), "/", "\\", "g")'),
--     { desc = "copy path in 8.3 short format" }
--   )
-- else
-- vim.keymap.set("n", "<leader>;cs", vim.cmd('let @*=expand("%")'), { desc = "only file name with extension" })
-- vim.keymap.set("n", "<leader>;cl", vim.cmd('let @*=expand("%:p")'), { desc = "full path" })
-- end

local wk = require("which-key")

wk.register({
  [";"] = {
    name = "copy path", -- optional group name
    n = { "<cmd>let @*=expand('%:t')<cr>", "only file name with extension" },
    r = { "<cmd>let @*=expand('%:.')<cr>", "relative file path" },
    p = { "<cmd>let @*=expand('%:h')<cr>", "path without file name" },
    F = { "<cmd>let @*=expand('%:p')<cr>", "full path" },
  },
})
