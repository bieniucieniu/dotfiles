return {
  "stevearc/conform.nvim",
  branch = "nvim-0.9",
  opts = {
    lazy = false,
    opts = {
      notify_on_error = false,
    },
  },
  config = function()
    require("conform").setup({
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
      formatters_by_ft = {
        lua = { "stylua" },
        typescriptreact = { "biome-check" },
        javascriptreact = { "biome-check" },
        typescript = { "biome-check" },
        javascript = { "biome-check" },
        json = { "biome-check" },
      },
    })
  end,
}
