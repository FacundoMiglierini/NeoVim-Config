require('local-highlight').setup({
    hlgroup = 'Search',
    cw_hlgroup = nil,
    -- Whether to display highlights in INSERT mode or not
    insert_mode = false,
    min_match_len = 1,
    max_match_len = math.huge,
    animate = {
      enabled = true,  -- requires snacks.nvim for animation
      easing = "linear",
      duration = {
        step = 10,
        total = 100,
      },
    },
})
