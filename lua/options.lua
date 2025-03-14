require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
vim.g.clipboard = {
  name = "wl-clipboard",
  copy = {
    ["+"] = "wl-copy",
    ["*"] = "wl-copy",
  },
  paste = {
    ["+"] = "wl-paste",
    ["*"] = "wl-paste",
  },
  cache_enabled = true,
}

-- Set clipboard option
vim.opt.clipboard = ""

-- Simple clipboard keymaps
-- if vim.fn.has("win32") == 1 then
--   -- Windows: Use built-in clipboard support
--   vim.opt.clipboard = ""
-- elseif vim.fn.has("macunix") == 1 then
--   -- macOS: Use pbcopy and pbpaste
--   vim.g.clipboard = {
--     name = "pbcopy",
--     copy = {
--       ["+"] = "pbcopy",
--       ["*"] = "pbcopy",
--     },
--     paste = {
--       ["+"] = "pbpaste",
--       ["*"] = "pbpaste",
--     },
--     cache_enabled = true,
--   }
--   vim.opt.clipboard = ""
-- elseif vim.fn.has("unix") == 1 then
--   -- Linux: Detect if running Wayland or X11
--   if os.getenv("WAYLAND_DISPLAY") then
--     -- Wayland setup
--     vim.g.clipboard = {
--       name = "wl-clipboard",
--       copy = {
--         ["+"] = "wl-copy",
--         ["*"] = "wl-copy",
--       },
--       paste = {
--         ["+"] = "wl-paste",
--         ["*"] = "wl-paste",
--       },
--       cache_enabled = true,
--     }
--   else
--     -- X11 setup (xclip or xsel)
--     vim.g.clipboard = {
--       name = "xclip",
--       copy = {
--         ["+"] = "xclip -selection clipboard",
--         ["*"] = "xclip -selection primary",
--       },
--       paste = {
--         ["+"] = "xclip -selection clipboard -o",
--         ["*"] = "xclip -selection primary -o",
--       },
--       cache_enabled = true,
--     }
--   end
--   vim.opt.clipboard = ""
-- end

vim.keymap.set(
  { "n", "v", "i", "c" },
  "<C-S-c>",
  '"+y',
  { noremap = true, silent = true, desc = "Copy to system clipboard" }
)
vim.keymap.set({ "n", "v" }, "<C-S-v>", '"+p', { noremap = true, silent = true, desc = "Paste from system clipboard" })
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.wo.relativenumber = true
vim.wo.wrap = false
vim.g.snacks_animate = true
vim.g.autoformat = false

