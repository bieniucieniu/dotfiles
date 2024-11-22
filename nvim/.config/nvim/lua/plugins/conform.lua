return {
  "stevearc/conform.nvim",
  lazy = false,
  opts = function()
    return {
      notify_on_error = false,
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
        go = { "gofmt" },
        sql = { "sqlfmt" },
      },
    }
  end,
}
