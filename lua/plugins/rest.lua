return {
  "rest-nvim/rest.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-neotest/nvim-nio",
    {
      "nvim-treesitter/nvim-treesitter",
      opts = function(_, opts)
        opts.ensure_installed = opts.ensure_installed or {}
        vim.list_extend(opts.ensure_installed, { "http" })
      end,
    },
  },
  ft = { "http" }, -- lazy load saat buka file .http
  config = function()
    require("rest-nvim").setup({
      result_split_horizontal = false,
      skip_ssl_verification = false,
      highlight = {
        enabled = true,
        timeout = 150,
      },
    })
  end,

  keys = {
    {
      "<leader>rr",
      function()
        vim.cmd("Rest run")
      end,
      desc = "Run REST request",
    },
    {
      "<leader>rl",
      function()
        vim.cmd("Rest last")
      end,
      desc = "Re-run last REST request",
    },
  },
}
