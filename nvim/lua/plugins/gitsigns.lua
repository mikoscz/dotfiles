require('gitsigns').setup {
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function keymap(mode, l, r, opts)
      opts = { noremap = true, silent = true }
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    keymap('n', '<leader>gn', gs.next_hunk)
    keymap('n', '<leader>gN', gs.prev_hunk)
    keymap({ 'n', 'v' }, '<leader>ga', ':Gitsigns stage_hunk<CR>')
    keymap({ 'n', 'v' }, '<leader>gr', ':Gitsigns reset_hunk<CR>')
    keymap('n', '<leader>gA', gs.stage_buffer)
    keymap('n', '<leader>gu', gs.undo_stage_hunk)
    keymap('n', '<leader>gR', gs.reset_buffer)
    keymap('n', '<leader>gp', gs.preview_hunk)
    keymap('n', '<leader>gb', function() gs.blame_line { full = true } end)
    keymap('n', '<leader>gd', gs.diffthis)
    keymap('n', '<leader>gD', function() gs.diffthis('~') end)
    keymap('n', '<leader>gtd', gs.toggle_deleted)
  end
}
