local status, bufferline = pcall(require, "bufferline")
if not status then
  return
end

-- bufferline 配置
bufferline.setup {
  options = {
    close_command = "Bdelete! %d",
    right_mouse_command = "Bdelete! %d",
    -- 侧边栏配置
    -- 左侧让出 nvim-tree 的位置，显示文字 File Explorer
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left",
      },
    },
	 highlights = {
		fill = {
		  fg = { attribute = "fg", highlight = "#ff0000" },
		  bg = { attribute = "bg", highlight = "TabLine" },
		},

		background = {
		  fg = { attribute = "fg", highlight = "TabLine" },
		  bg = { attribute = "bg", highlight = "TabLine" },
		},

		buffer_visible = {
		  fg = { attribute = "fg", highlight = "TabLine" },
		  bg = { attribute = "bg", highlight = "TabLine" },
		},

		close_button = {
		  fg = { attribute = "fg", highlight = "TabLine" },
		  bg = { attribute = "bg", highlight = "TabLine" },
		},
		close_button_visible = {
		  fg = { attribute = "fg", highlight = "TabLine" },
		  bg = { attribute = "bg", highlight = "TabLine" },
		},
	   
		tab_selected = {
		  fg = { attribute = "fg", highlight = "Normal" },
		  bg = { attribute = "bg", highlight = "Normal" },
		},

		tab = {
		  fg = { attribute = "fg", highlight = "TabLine" },
		  bg = { attribute = "bg", highlight = "TabLine" },
		},

		tab_close = {
		  -- fg = {attribute='fg',highlight='LspDiagnosticsDefaultError'},
		  fg = { attribute = "fg", highlight = "TabLineSel" },
		  bg = { attribute = "bg", highlight = "Normal" },
		},

		duplicate_selected = {
		  fg = { attribute = "fg", highlight = "TabLineSel" },
		  bg = { attribute = "bg", highlight = "TabLineSel" },
		  italic = true,
		},

		duplicate_visible = {
		  fg = { attribute = "fg", highlight = "TabLine" },
		  bg = { attribute = "bg", highlight = "TabLine" },
		  italic = true,
		},

		duplicate = {
		  fg = { attribute = "fg", highlight = "TabLine" },
		  bg = { attribute = "bg", highlight = "TabLine" },
		  italic = true,
		},

		modified = {
		  fg = { attribute = "fg", highlight = "TabLine" },
		  bg = { attribute = "bg", highlight = "TabLine" },
		},

		modified_selected = {
		  fg = { attribute = "fg", highlight = "Normal" },
		  bg = { attribute = "bg", highlight = "Normal" },
		},

		modified_visible = {
		  fg = { attribute = "fg", highlight = "TabLine" },
		  bg = { attribute = "bg", highlight = "TabLine" },
		},

		separator = {
		  fg = { attribute = "bg", highlight = "TabLine" },
		  bg = { attribute = "bg", highlight = "TabLine" },
		},

		separator_selected = {
		  fg = { attribute = "bg", highlight = "Normal" },
		  bg = { attribute = "bg", highlight = "Normal" },
		},

		indicator_selected = {
		  fg = { attribute = "fg", highlight = "LspDiagnosticsDefaultHint" },
		  bg = { attribute = "bg", highlight = "Normal" },
		},
	 },
	}
}
