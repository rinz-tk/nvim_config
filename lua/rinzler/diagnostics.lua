-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--     vim.lsp.diagnostic.on_publish_diagnostics, {
--         virtual_text = true,
--         signs = true,
--         underline = true,
--         -- update_in_insert = true,
--     }
-- )

vim.diagnostic.config({
  virtual_text = { current_line = true }
})
