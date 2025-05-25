require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "python", "c", "lua", "cpp", "java", "javascript", "html", "css", "markdown", "markdown_inline", "bash"},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  },
  autotag = {
    enable = true,
  },
  -- ...
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
  autopairs = {
    enable = true
  },
  indent = {
    enable = true,
    disable = {},
  }
}

vim.diagnostic.config({
    underline = true,
    virtual_text = {
        spacing = 5,
        severity_limit = 'Warning',
    },
    update_in_insert = true,
})

vim.filetype.add({
    extension = {
        zshrc = "sh",
        rc = "sh",
        mjs = "js",
        mdx = "markdown",
    },
})
