require("claude-code").setup({
  -- Command settings
  command = "claude",        -- Command to launch Claude Code  
  -- Keymaps
  keymaps = {
    toggle = {
      normal = "<C-,>",       -- Normal mode toggle key
      terminal = "<C-,>",     -- Terminal mode toggle key
      variants = {
        continue = "<leader>cC", -- Continue conversation key
        verbose = "<leader>cV",  -- Verbose mode key
      },
    },
    window_navigation = true, -- Enable window nav keys
    scrolling = true,         -- Enable page scroll keys
  }
}
