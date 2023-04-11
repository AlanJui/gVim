Vim�UnDo� kx}�p���D�a8Cdn�N���Ut�-�o  �   /	["z"] = { "UndotreeToggle<CR>", "Undo tree" },                             c��   	 _�                     j       ����                                                                                                                                                                                                                                                                                                                                                             c���     �   i   k  �      		d = {5��    i                    �                    5�_�                    j       ����                                                                                                                                                                                                                                                                                                                                                             c���     �   i   k  �          �   i   k  �    5��    i                      �                     �    i                     �                     5�_�                    j       ����                                                                                                                                                                                                                                                                                                                                                             c���     �   i   k  �          d = 5��    i                     �                     5�_�                    j       ����                                                                                                                                                                                                                                                                                                                                                             c���     �   j   o  �    �   j   k  �    5��    j                      �              ^       5�_�                    k       ����                                                                                                                                                                                                                                                                                                                                                             c���     �   j   l  �      			l = {5��    j                    �                    5�_�                    j       ����                                                                                                                                                                                                                                                                                                                                                             c���     �   i   j          
    d = {}5��    i                      �                     5�_�                    j       ����                                                                                                                                                                                                                                                                                                                                                             c���    �   i   n  �      			d = {   )				":Telescope diagnostics bufnr=0<CR>",   $				"List diagnostics current file",   			},5��    i                   �      W       S       5�_�      	              �       ����                                                                                                                                                                                                                                                                                                                                                             c���     �   �   �  �      		d = {5��    �                    �                    5�_�      
           	   �       ����                                                                                                                                                                                                                                                                                                                                                             c���     �   �   �  �    �   �   �  �    5��    �                      �              .       5�_�   	              
   �       ����                                                                                                                                                                                                                                                                                                                                                             c���     �   �   �  �      -			v = { ":Gvdiffsplit<CR>", "diff vsplit" },5��    �                    �                    5�_�   
                 �       ����                                                                                                                                                                                                                                                                                                                                                             c���    �   �   �  �      -			d = { ":Gvdiffsplit<CR>", "diff vsplit" },5��    �                     �                     5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             c���    �   �   �  �      ,		d = { ":Gvdiffsplit<CR>", "diff vsplit" },5��    �                    �                    �    �                    �                    5�_�                   T       ����                                                                                                                                                                                                                                                                                                                            T          T   )       v   +    c���    �   S   U  �      M		t = { ":Telescope yabs current_language_tasks<CR>", "Tasks for language" },5��    S                     �
                     5�_�                   r       ����                                                                                                                                                                                                                                                                                                                           r         �          V       c��     �  q  s  �      	-- LSP5��    q                    (.                     5�_�                   r       ����                                                                                                                                                                                                                                                                                                                           r         �          V       c��     �  q  s  �      	-- 5��    q                    (.                     5�_�                   s       ����                                                                                                                                                                                                                                                                                                                           r         �          V       c��     �  r  t  �      	x = {5��    r                   6.                    5�_�                   r        ����                                                                                                                                                                                                                                                                                                                           r         �          V       c�     �  q  r       #   	-- Trouble List   	z = {   		name = "Trouble",   7		x = { ":TroubleToggle<CR>", "On/Off TroubleToggle" },   H		r = { ":TroubleToggle lsp_references<CR>", "Display LSP References" },   9		q = { ":TroubleToggle quickfix<CR>", "List QuickFix" },   		w = {   .			":TroubleToggle workspace_diagnostics<CR>",   #			"List diatnostics of workspace",   		},   		d = {   -			":TroubleToggle document_diagnostics<CR>",   &			"List diatnostics of current file",   		},   7		l = { ":TroubleToggle loclist<CR>", "List loclist" },   		j = {   			name = "Jump",   			f = {   K				'<cmd>lua require("trouble").first({skip_groups = true, jump = true})',   2				"Jump to the first item, skipping the groups",   			},   			p = {   N				'<cmd>lua require("trouble").previous({skip_groups = true, jump = true})',   5				"Jump to the previous item, skipping the groups",   			},   			n = {   N				'<cmd>lua require("trouble").next({skip_groups = true, jump = true})<CR>',   1				"Jump to the next item, skipping the groups",   			},   			l = {   J				'<cmd>lua require("trouble").last({skip_groups = true, jump = true})',   1				"Jump to the last item, skipping the groups",   			},   		},   	},5��    q      #               $.      B              5�_�                   �       ����                                                                                                                                                                                                                                                                                                                           r         r          V       c�    �  �  �  �    �  �  �  �    5��    �              #       �1              B      5�_�                   5        ����                                                                                                                                                                                                                                                                                                                           5         q          V       c�B     �  4  5       =   	-- Running code   	r = {   		name = "Run...",   		p = {   			name = "Python",   			p = {   8				":TermExec direction=horizontal cmd='python %'<CR>",   				"Run current file",   			},   			l = {   8				":TermExec direction=horizontal cmd='pylint %'<CR>",   				"Lint current file",   			},   		},   		d = {   			name = "Django...",   B			k = { ":2TermExec cmd='npx kill-port 8000'<CR>", "Kill Port" },   ;			g = { ":2TermExec cmd='git status'<CR>", "git status" },   I			r = { ":TermExec cmd='python manage.py runserver'<CR>", "Runserver" },   			R = {   @				":TermExec cmd='python manage.py runserver --noreload'<CR>",   				"Runserver --noreload",   			},   I			S = { ":2TermExec cmd='python manage.py shell'<CR>", "Django Shell" },   			s = {   <				":2TermExec cmd='python manage.py createsuperuser'<CR>",   				"Create super user",   			},   			c = {   E				":2TermExec cmd='echo yes | python manage.py collectstatic'<CR>",   				"Collect all static files",   			},   			m = {   ;				":2TermExec cmd='python manage.py makemigrations'<CR>",   				"Update DB schema",   			},   I			M = { ":2TermExec cmd='python manage.py migrate'<CR>", "Migrate DB" },   		},   		-- unit testing   		u = {   			name = "Unit Testing...",   			n = {   ,				"<cmd>lua require('neotest').run.run()",   				"Run the nearest test",   			},   			r = {   >				"<cmd>lua require('neotest').run.run(vim.fn.expand('%'))",   				"Test current file",   			},   D			-- Debug the nearest test (requires nvim-dap and adapter support)   			d = {   5				"require('neotest').run.run({strategy = 'dap'})",   				"Debug the nearest test",   			},   D			s = { "require('neotest').run.stop()", "Stop the nearest test" },   			a = {   &				"require('neotest').run.attach()",   !				"Attach to the nearest test",   			},   		},   	},5��    4      =               �'      {              5�_�                    �       ����                                                                                                                                                                                                                                                                                                                           5         5          V       c�d    �   �  8  �    �   �   �  �    5��    �               =        !              {      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             c��   	 �        �      /	["z"] = { "UndotreeToggle<CR>", "Undo tree" },5��                                             5�_�                    P       ����                                                                                                                                                                                                                                                                                                                                                             c��"    �   O   Q  �       				":Telescope yabs tasks<CR>",5��    O                    �
                    5��