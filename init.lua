-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

--disabilita a formatação ao salvar
vim.g.autoformat = false

--escala boa
vim.g.neovide_scale_factor = 0.75

--Muda a fonte
vim.o.guifont = "FiraCode Nerd Font Mono:h14"

--Muda do cmd para o powershell (se estiver no windows)
if vim.fn.has("win32") == 1 then
  vim.o.shell = "powershell -NoLogo"
end

--mudar zoom neovide com ctrl + = e ctrl + -
if vim.g.neovide then
  local function neovideScale(delta)
    local v = vim.g.neovide_scale_factor + delta
    vim.g.neovide_scale_factor = v
  end

  vim.keymap.set({ "n", "v" }, "<C-=>", function()
    neovideScale(0.05)
  end, { desc = "Neovide: zoom in" })

  vim.keymap.set({ "n", "v" }, "<C-->", function()
    neovideScale(-0.05)
  end, { desc = "Neovide: zoom out" })
end
