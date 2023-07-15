require("bufferline").setup{
  options = {
    close_command = "Bdelete! %d",
    right_mouse_command = "Bdelete! %d",
    offsets = {
      {
        filetype="NvimTree",
        text="File Explorer",
        text_align = "left",
        separator = true,
      }
    },
    hover = {
      enabled = true,
      delay = 200,
      reveal = {"close"},
    },
  },
}
vim.keymap.set("n", "<leader>w", ":Bdelete!<CR>")
vim.keymap.set("n", "<leader>q", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<leader>e", ":BufferLineCycleNext<CR>")

