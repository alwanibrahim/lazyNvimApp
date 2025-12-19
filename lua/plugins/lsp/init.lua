return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        emmet_ls = {
          filetypes = {
            "html",
            "css",
            "scss",
            "sass",
            "less",
            "javascriptreact",
            "typescriptreact",
            "astro",
            "vue",
            "svelte",
          },
        },
        tailwindcss = {},
      },
    },
  },
}
