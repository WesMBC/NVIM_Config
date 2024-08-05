
--Seccion para la selccion del tema
function colorselect(color)
	color = color or "monokai-pro-machine"
	vim.cmd.colorscheme(color)
end
colorselect()
