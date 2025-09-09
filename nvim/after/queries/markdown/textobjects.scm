;extends

(fenced_code_block (code_fence_content) @class.inner) @class.outer

-- ... other config
textobjects = {
  move = {
    enable = true,
    set_jumps = false,
    goto_next_start = {
      ["]b"] = { query = "@block.inner", desc = "next code block" },
      -- The @class.inner queries also catch on markdown headings. @block.inner does not
      -- ["]b"] = { query = "@class.inner", desc = "next block" },
    },
    goto_previous_start = {
      ["[b"] = { query = "@block.inner", desc = "previous code block" },
      -- ["[b"] = { query = "@class.inner", desc = "previous block" },
    },
  },
},
-- ... other config
