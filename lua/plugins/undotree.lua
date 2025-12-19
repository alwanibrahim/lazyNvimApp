-- lua/plugins/undotree.lua
return {
  {
    "mbbill/undotree",
    keys = {
      { "<leader>uu", "<cmd>UndotreeToggle<CR>", desc = "Undo Tree" },
    },
  },
}
