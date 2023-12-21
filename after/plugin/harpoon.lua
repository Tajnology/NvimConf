local harpoon = require("harpoon")

local maxlen = 70
local harpoon_config = { 
    default = { 
        display = function(list_item) 
            local v = list_item.value
            local vlen = string.len(v)
            if vlen < maxlen then
                return v
            else
                return string.sub(v,vlen-maxlen,vlen)
            end
        end 
    } 
}

-- REQUIRED
harpoon:setup(harpoon_config)
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
vim.keymap.set("n", "<leader>w", function() harpoon:list():remove() end)
vim.keymap.set("n", "<leader><C-w>", function() harpoon:list():clear() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)
