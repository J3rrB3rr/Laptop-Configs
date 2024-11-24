return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")        
    
    local logo = [[

 █     █░▓█████  ██▓     ▄████▄   ▒█████   ███▄ ▄███▓▓█████  ▐██▌ 
▓█░ █ ░█░▓█   ▀ ▓██▒    ▒██▀ ▀█  ▒██▒  ██▒▓██▒▀█▀ ██▒▓█   ▀  ▐██▌ 
▒█░ █ ░█ ▒███   ▒██░    ▒▓█    ▄ ▒██░  ██▒▓██    ▓██░▒███    ▐██▌ 
░█░ █ ░█ ▒▓█  ▄ ▒██░    ▒▓▓▄ ▄██▒▒██   ██░▒██    ▒██ ▒▓█  ▄  ▓██▒ 
░░██▒██▓ ░▒████▒░██████▒▒ ▓███▀ ░░ ████▓▒░▒██▒   ░██▒░▒████▒ ▒▄▄  
░ ▓░▒ ▒  ░░ ▒░ ░░ ▒░▓  ░░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒░   ░  ░░░ ▒░ ░ ░▀▀▒ 
  ▒ ░ ░   ░ ░  ░░ ░ ▒  ░  ░  ▒     ░ ▒ ▒░ ░  ░      ░ ░ ░  ░ ░  ░ 
  ░   ░     ░     ░ ░   ░        ░ ░ ░ ▒  ░      ░      ░       ░ 
    ░       ░  ░    ░  ░░ ░          ░ ░         ░      ░  ░ ░    
                        ░                                         
  ]]

    dashboard.section.header.val = vim.split(logo, "\n")


    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("f", "  > File explorer", "<cmd>Neotree filesystem reveal left<CR>"),
      dashboard.button("l", "  > Lazy Nvim", "<cmd>Lazy<CR>"),
      dashboard.button("q", "  > Quit Nvim", "<cmd>qa<CR>"),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
