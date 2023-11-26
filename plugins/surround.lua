return {
  "ur4ltz/surround.nvim",
  lazy = false,
  config = function()
    require("surround").setup {
      context_offset = 100,
      load_autogroups = true,
      mappings_style = "sandwich",
      map_insert_mode = true,
      quotes = { "'", '"' },
      brackets = { "(", "{", "[" },
      space_on_closing_char = false,
      pairs = {
        nestable = { b = { "(", ")" }, s = { "[", "]" }, B = { "{", "}" }, a = { "<", ">" } },
        linear = { q = { "'", "'" }, t = { "`", "`" }, d = { '"', '"' } },
      },
      prefix = "s",
    }
  end,
}
-- no mod add voce pode usar o sa e depois o w e o char(")
-- no modo replace primeiro vem a tecla de substituir e depois vem a tecla de substituirção / search target
