local M = {}

---@return table
function M.lazy_opts()
  return {
    -- See https://github.com/folke/lazy.nvim/#%EF%B8%8F-configuration
    concurrency = jit.os:find('Windows') and (vim.uv.available_parallelism() * 2) or nil,
  }
end

return M
