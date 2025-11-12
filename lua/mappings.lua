require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Поиск файлов: <Space><Space>
map("n", "<Space><Space>", "<cmd>Telescope find_files<CR>", { desc = "Find files" })

-- Поиск по содержимому: <Space>/
map("n", "<Space>/", "<cmd>Telescope live_grep<CR>", { desc = "Search text in files" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
