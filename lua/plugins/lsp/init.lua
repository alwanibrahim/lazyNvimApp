return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        yamlls = {
          settings = {
            yaml = {
              validate = true,
              completion = true,
              hover = true,
              schemas = {
                ["https://json.schemastore.org/docker-compose.json"] = "docker-compose*.yml",

                -- GitHub Actions
                ["https://json.schemastore.org/github-workflow.json"] = ".github/workflows/*.yml",

                -- GitLab CI
                ["https://json.schemastore.org/gitlab-ci.json"] = ".gitlab-ci.yml",

                -- Azure Pipelines
                ["https://json.schemastore.org/azure-pipelines.json"] = "azure-pipelines.yml",

                -- CircleCI
                ["https://json.schemastore.org/circleciconfig.json"] = ".circleci/config.yml",
              },
            },
          },
        },
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
