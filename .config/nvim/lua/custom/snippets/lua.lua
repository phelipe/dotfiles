local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- DEFOLD snipets
  -- Script Defold básico
  s('dfscript', {
    t 'function init(self)',
    t { '', '    ' },
    i(1, '-- setup'),
    t { '', 'end', '', 'function update(self, dt)', 'end' },
  }),

  -- Script com callbacks comuns
  s('dfscriptfull', {
    t 'function init(self)',
    t { '', 'end', '', 'function update(self, dt)', 'end', '' },
    t 'function on_message(self, message_id, message, sender)',
    t { '', 'end', '', 'function on_input(self, action_id, action)', 'end' },
  }),

  -- Template básico de collection
  s('dfcol', {
    t 'name: "',
    i(1, 'main'),
    t { '"', '', '', 'collection_instances {', '  id: "' },
    i(2, 'bootstrap'),
    t { '"', '  prototype: "' },
    i(3, '/game/entities/bootstrap.go'),
    t { '"', '}' },
  }),

  -- Template GameObject Defold (.go)
  s('dfgo', {
    t 'components {',
    t { '', '  id: "script"' },
    t { '', '  component: "' },
    i(1, '/game/entities/example.script'),
    t { '"', '}' },
  }),
}
