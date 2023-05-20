local ls = require("luasnip")
local sn = ls.snippet_node
local i = ls.insert_node

helper = {}

helper.line_begin = require("luasnip.extras.expand_conditions").line_begin

return helper
