local Rule = require('nvim-autopairs.rule')
local npairs = require('nvim-autopairs')

npairs.setup({
    check_ts = true,
    fast_wrap = {
      map = '<M-e>',
      chars = { '{', '[', '(', '"', "'" },
      pattern = [=[[%'%"%>%]%)%}%,]]=],
      end_key = '$',
      keys = 'qwertyuiopzxcvbnmasdfghjkl',
      check_comma = true,
      manual_position = true,
      highlight = 'Search',
      highlight_grey='Comment'
    }
})

-- Added the ablity to auto-complete < >
-- Remember,right now you'll need to set it up for each file type
npairs.add_rules({Rule("<", ">", "lua")})

