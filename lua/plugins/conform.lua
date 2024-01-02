return {
  {
    "stevearc/conform.nvim",
    require("conform").setup({
      formatters_by_ft = {
        python = { "isort", "black" },
        yaml = { "yamlfmt", "yamlfix" },
        terraform = { "terraform_fmt" },
        bash = { "shfmt", "shellcheck" },
        shell = { "shfmt", "shellcheck" },
      },
      format_on_save = {
        lsp_fallback = true,
        timeout_ms = 500,
      },
    }),
  },
}
