return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")

      cmp.setup.filetype("http", {
        sources = {
          { name = "buffer" },
          { name = "path" },
        },
      })
    end,
  },
}
