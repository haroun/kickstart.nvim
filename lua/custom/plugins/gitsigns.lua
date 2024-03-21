return {
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
    on_attach = function(bufnr)
      -- Include essential gitsigns keymaps, for more see gitsigns README:
      -- https://github.com/lewis6991/gitsigns.nvim
      local gs = package.loaded.gitsigns
      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end
      -- Navigation
      map({ 'n', 'v' }, ']c', gs.next_hunk, { desc = 'Jump to next git [c]hange' })
      map({ 'n', 'v' }, '[c', gs.prev_hunk, { desc = 'Jump to previous git [c]hange' })
      -- Actions
      map('n', '<leader>hs', gs.stage_hunk, { desc = 'git [s]tage hunk' })
      map('n', '<leader>hr', gs.reset_hunk, { desc = 'git [r]eset hunk' })
      map('n', '<leader>hu', gs.undo_stage_hunk, { desc = 'git [u]ndo stage hunk' })
      map('n', '<leader>hp', gs.preview_hunk, { desc = 'git [p]review hunk' })
      map('n', '<leader>hb', gs.blame_line, { desc = 'git [b]lame line' })
      map('n', '<leader>hd', gs.diffthis, { desc = 'git [d]iff against index' })
      -- Visual mode
      map('v', '<leader>hs', function()
        gs.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
      end, { desc = 'stage git hunk' })
      map('v', '<leader>hr', function()
        gs.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
      end, { desc = 'reset git hunk' })
    end,
  },
}
