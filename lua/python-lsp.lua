local on_attach = function(client)
	require 'lsp_signature'.on_attach({
		bind = true,
		floating_window = false,
		auto_close_after = 2,
		fix_pos = true
	})
end


require'lspconfig'.pyright.setup{
	on_attach = on_attach
}


