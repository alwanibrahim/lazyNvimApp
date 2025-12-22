return {
  "rest-nvim/rest.nvim",
  ft = { "http" },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-neotest/nvim-nio",
  },

  config = function()
    vim.g.rest_nvim = {
      result_split_horizontal = false,
      client = { curl = { progress = false } },
      highlight = { enabled = false },

      response = {
        hooks = {
          decode_json = true,
          decode_xml = false,
        },
      },

      result = {
        formatters = {
          json = "jq",
        },
      },
    }

    -- stop treesitter di buffer http
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "http",
      callback = function()
        pcall(vim.treesitter.stop)
      end,
    })

    -- 🔥 FIX UTAMA: paksa response jadi JSON
    vim.api.nvim_create_autocmd("BufEnter", {
      pattern = "rest-nvim://*",
      callback = function()
        vim.bo.filetype = "json"
      end,
    })
  end,

  keys = {
    { "<leader>rr", "<cmd>Rest run<cr>", desc = "Run REST request" },
    { "<leader>rl", "<cmd>Rest last<cr>", desc = "Re-run last REST request" },
  },
}
