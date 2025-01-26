local M = {}

function M.build()
  print "builtn't"
end

function M.setup()
  vim.api.nvim_create_user_command('Build', M.build, {})
end

return M
