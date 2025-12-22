return {
  "folke/trouble.nvim",
  opts = {},
  keys = {
    { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "All Diagnostics" },
    { "<leader>xw", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Workspace Diagnostics" },
    { "<leader>xd", "<cmd>Trouble diagnostics toggle filter.buf=1<cr>", desc = "Document Diagnostics" },
  },
}
