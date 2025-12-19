return {
  "rest-nvim/rest.nvim",
  ft = { "http" }, -- tetap lazy load
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-neotest/nvim-nio",

    -- Treesitter tetap ada, tapi kita KENDALIKAN
    {
      "nvim-treesitter/nvim-treesitter",
      opts = function(_, opts)
        opts.ensure_installed = opts.ensure_installed or {}
        vim.list_extend(opts.ensure_installed, { "http" })

        -- ⬇️ PENTING: matikan fitur berat
        opts.highlight = opts.highlight or {}
        opts.highlight.disable = function(_, bufnr)
          local ft = vim.bo[bufnr].filetype
          return ft == "http"
        end
      end,
    },
  },

  config = function()
    require("rest-nvim").setup({
      -- ❌ split horizontal lambat di screen kecil
      result_split_horizontal = false,

      -- ❌ jangan render progress UI
      client = {
        curl = {
          progress = false,
        },
      },

      -- 🔥 MATIKAN highlight berat
      highlight = {
        enabled = false,
      },

      -- 🔥 Fokus JSON saja
      response = {
        hooks = {
          decode_json = true,
          decode_xml = false,
        },
      },
    })

    -- 🔥 EXTRA: paksa stop treesitter di buffer http
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "http",
      callback = function()
        pcall(vim.treesitter.stop)
      end,
    })
  end,

  keys = {
    {
      "<leader>rr",
      "<cmd>Rest run<cr>",
      desc = "Run REST request",
    },
    {
      "<leader>rl",
      "<cmd>Rest last<cr>",
      desc = "Re-run last REST request",
    },
  },
}
