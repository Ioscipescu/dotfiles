vim.api.nvim_create_user_command("Pandoc", function(opts)
  vim.cmd(
    "!pandoc -i "
      .. vim.fn.fnameescape(vim.fn.expand("%"))
      .. " -o "
      .. vim.fn.fnameescape(vim.fn.expand("%:r"))
      .. "."
      .. opts.args
  )
end, { nargs = 1 })
