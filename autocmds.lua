local luasnip = require('luasnip')

vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  callback = function()
    vim.bo.tabstop = 4
    vim.bo.softtabstop = 4
    vim.bo.shiftwidth = 4
    vim.bo.expandtab = true
  end,
  desc = "Set tabs to 8 chars in Go files",
})

vim.api.nvim_create_autocmd("ModeChanged", {
  group = vim.api.nvim_create_augroup("UnlinkLuaSnipSnippetOnModeChange", {
    clear = true,
  }),
  pattern = { "s:n", "i:*" },
  desc = "Forget the current snippet when leaving the insert mode",
  callback = function(evt)
    -- If we have n active nodes, n - 1 will still remain after a `unlink_current()` call.
    -- We unlink all of them by wrapping the calls in a loop.
    while true do
      if luasnip.session and luasnip.session.current_nodes[evt.buf] and not luasnip.session.jump_active then
        luasnip.unlink_current()
      else
        break
      end
    end
  end,
})
