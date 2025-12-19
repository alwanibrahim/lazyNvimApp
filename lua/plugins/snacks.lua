-- lua/plugins/snacks.lua
return {
  "folke/snacks.nvim",
  opts = {
    explorer = {
      hidden = true,
      ignored = {
        ".swp",
        ".swo",
        ".swn",
        ".swx",
      },
    },
  },
}
