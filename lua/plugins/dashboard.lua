return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function ()
            local logo = [[
           .-.                                                                               
          (_) )-.                                                                .-.         
             / __)     .-.       .       .     .-.    .  .-. .-.                 `-'   .-._. 
            /    `.   (  |      / \     / \   (  |     )/   )   )      .-.      /     (   )  
           /'      )   `-'-'   / ._)   / ._)   `-'-'  '/   /   (       `-'   _.(__.    `-'   
        (_/  `----'           /       /                         `-'                          

            ]]

            logo = string.rep("\n", 8) .. logo .. "\n\n"
        require('dashboard').setup {
            theme = 'doom',
            config = {
                header = vim.split(logo, "\n"),
                center = {
                    {
                        desc = "Restore Last Session",
                        action = 'lua require("persistence").load({ last = true })',
                        key = "r"
                    },
                    {
                        desc = "Select Session",
                        action = 'lua require("persistence").select()',
                        key = "s"
                    },
                    {
                        desc = "Config",
                        action = "e " .. vim.fn.stdpath('config'),
                        key = "c"
                    },
                    {
                        desc = "lazy.nvim",
                        action = "Lazy",
                        key = "l"
                    },
                    {
                        desc = "Quit",
                        action = "qa",
                        key = "q"
                    }
                }
            }
        }
    end,
    dependecies = {
        {'nvim-tree/nvim-web-devicons'}
    }
}
