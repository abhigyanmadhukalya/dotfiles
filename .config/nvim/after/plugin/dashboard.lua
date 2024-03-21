local status, dashboard = pcall(require, "dashboard")
if not status then
	return
end

local logo = [[
          ▀████▀▄▄              ▄█ 
            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ 
    ▄        █          ▀▀▀▀▄  ▄▀  
   ▄▀ ▀▄      ▀▄              ▀▄▀  
  ▄▀    █     █▀   ▄█▀▄      ▄█    
  ▀▄     ▀▄  █     ▀██▀     ██▄█   
   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  
    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  
   █   █  █      ▄▄           ▄▀   
]]

logo = string.rep("\n", 6) .. logo .. "\n\n"

dashboard.setup({
	theme = "doom",
	config = {
		center = {
			{ action = "Telescope find_files", desc = "Find files", icon = " ", key = "f" },
			{ action = "ene | startinsert", desc = "New file", icon = " ", key = "e" },
			{ action = "Telescope oldfiles", desc = "Recent files", icon = " ", key = "r" },
			{ action = "Telescope live_grep", desc = "Find text", icon = " ", key = "g" },
			{ action = "Lazy", desc = "Lazy", icon = "󰒲 ", key = "l" },
			{ action = "qa", desc = "Quit", icon = " ", key = "q" },
		},
		header = vim.split(logo, "\n"),
	},
})
