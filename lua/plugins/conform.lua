return {
  {
    {
      "stevearc/conform.nvim",
      opts = {},
      require("conform").setup({
        formatters_by_ft = {
          bash = { "shfmt", "shellcheck" },
          shell = { "shfmt", "shellcheck" },
          lua = { "stylua" },
          python = { "isort", "black" },
          terraform = { "terraform-ls", "tflint" },
          yaml = { "prettier" },
          hcl = { "terragrunt_hclfmt" },
        },
        format_on_save = {
          lsp_fallback = true,
          timeout_ms = 500,
        },
      }),
    },
  },
}
