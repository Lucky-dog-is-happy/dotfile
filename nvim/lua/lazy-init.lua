-- Setup lazy.nvim package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load all plugin configurations from plugins directory, excluding this file
local plugin_dir = vim.fn.stdpath("config") .. "/plugins"
local plugin_files = vim.fn.glob(plugin_dir .. "/*.lua", true, true)

local plugins = {}
for _, file in ipairs(plugin_files) do
    local plugin_name = vim.fn.fnamemodify(file, ":t:r")
    
    -- Load all plugin configurations
    local plugin_spec = dofile(file)
    if plugin_spec then
        table.insert(plugins, plugin_spec)
    end
end

-- Use package.loaded to avoid lazy naming conflict
local lazy_mod = require("lazy")
lazy_mod.setup(plugins)

-- Return table for backward compatibility
return { setup = function() end }
