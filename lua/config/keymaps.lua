local Util = require("lazyvim.util")
local keymap = vim.keymap.set
-- Silent keymap option

-- go to dashboard
keymap("n", "<leader>\\", function()
  -- close all open buffers before open dashboard
  for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
    local buftype = vim.api.nvim_buf_get_option(bufnr, "buftype")
    if buftype ~= "terminal" then
      vim.api.nvim_buf_delete(bufnr, { force = true })
    end
  end

  if Util.has("alpha-nvim") then
    require("alpha").start(true)
  end
end, { silent = true, desc = "Open dashboard" })

-- save file
keymap("n", "<leader>bw", ":w<CR>", { silent = true, desc = "Save buffer" })
keymap("n", "<leader>ba", ":wa<CR>", { silent = true, desc = "Save all buffer" })
keymap(
  "n",
  "<leader>ut",
  ':echo "Color scheme: " . g:colors_name<CR>',
  { noremap = true, silent = true, desc = "Show current color scheme" }
)
