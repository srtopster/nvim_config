--Muda de enrter para tab o autocomplete
--Usa ctrl+k e ctrl+j para andar pelas sugestões
return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "default",
      ["<C-j>"] = { "select_next", "fallback" },
      ["<C-k>"] = { "select_prev", "fallback" },
      ["<Tab>"] = { "accept", "fallback" },
    },



    -- disable buffer completion
    sources = {
      default = {"lsp","path","snippets"}
    }
  },
}
