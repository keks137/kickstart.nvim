local ls = require 'luasnip'
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node
local f = ls.function_node

-- Function to generate a header guard macro based on the current filename.
local function header_guard()
  local filename = vim.fn.expand '%:t' -- gets the current file's name (e.g., "foo.h")
  local basename = filename:match '(.+)%.' or filename -- extract name without extension
  local guard = (basename:upper():gsub('%W', '_') .. '_H')
  return guard
end

-- Define the snippet.
local headerGuardSnippet = s({ trig = 'hg', name = 'Header Guard', dscr = 'Insert a C header guard' }, {
  f(function()
    return '#ifndef ' .. header_guard()
  end, {}), -- #ifndef <MACRO>
  t { '', '' },
  f(function()
    return '#define ' .. header_guard()
  end, {}), -- #define <MACRO>
  t { '', '', '' },
  i(0, '// Your code here'), -- Placeholder for your code
  t { '', '', '' },
  f(function()
    return '#endif /* ' .. header_guard() .. ' */'
  end, {}), -- #endif /* <MACRO> */
})

return {
  headerGuardSnippet,
}
