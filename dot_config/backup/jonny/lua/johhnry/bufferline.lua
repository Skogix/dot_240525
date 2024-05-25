local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

bufferline.setup({
	options = {
		-- Tab commands
		close_command = "Bdelete! %d",
		right_mouse_command = "Bdelete! %d",
		left_mouse_command = "buffer %d",
		middle_mouse_command = nil,
		-- Offset with nvim-tree buffer
		offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
		-- Icons
		indicator = { style = "icon", icon = "▎" },
		buffer_close_icon = "⨯",
		close_icon = "",
		left_trunc_marker = "",
		right_trunc_marker = "",
		separator_style = "slant",
	},
})
