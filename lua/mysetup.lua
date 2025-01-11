M = {}

M.config = {}

function M.setup()

  -- Setup nerd fonts
  vim.g.have_nerd_font = true

	-- Show relative line numbers
	vim.wo.relativenumber = true

	-- Make scrolloff 16 lines
	vim.wo.scrolloff = 16

	-- Disable arrow keys
	vim.keymap.set("", "<up>", "<nop>", { silent = true, noremap = true })
	vim.keymap.set("", "<down>", "<nop>", { silent = true, noremap = true })
	vim.keymap.set("", "<left>", "<nop>", { silent = true, noremap = true })
	vim.keymap.set("", "<right>", "<nop>", { silent = true, noremap = true })

	-- Change split orientation
	vim.keymap.set("n", "<leader>tk", "<C-w>t<C-w>K", { silent = true, noremap = true }) -- change vertical to horizontal
	vim.keymap.set("n", "<leader>th", "<C-w>t<C-w>H", { silent = true, noremap = true }) -- change horizontal to vertical

	-- Move around splits using Ctrl + {h,j,k,l}
	vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true, noremap = true })
	vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true, noremap = true })
	vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true, noremap = true })
	vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true, noremap = true })

	-- terminal mode
	vim.keymap.set("n", "<C-t>", ":terminal<CR>", { noremap = true })
	vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { silent = true, noremap = true })

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
end

return M
-- vim: ts=2 sts=2 sw=2 et
