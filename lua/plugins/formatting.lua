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
          -- Conform will run multiple formatters sequentially
          python = { "isort", "black" },
          -- Use a sub-list to run only the first available formatter
          javascript = { { "prettierd", "prettier" } },
          terraform = { { "tflint" } },
          yaml = { { "yamlfmt" } },
        },
        format_on_save = {
          lsp_fallback = true,
          timeout_ms = 500,
        },
      }),
    },
  },
}
