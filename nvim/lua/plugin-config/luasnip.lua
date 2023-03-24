return function()
    local ls = require("luasnip")
    local opt = { noremap = true, silent = true }
    local map = vim.keymap.set
    -- 后来改到每个类型文件里加载
    require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets/" })
    ls.config.set_config({
        history = true,
        updateevents = "TextChanged, TextChangedI",
        enable_autosnippets = true,
        ext_opts = {
            [require("luasnip.util.types").choiceNode] = {
                active = {
                    virt_text = { { "●", "GruvboxOrange" } },
                },
            },
            [require("luasnip.util.types").insertNode] = {
                active = {
                    virt_text = { { "●", "GruvboxBlue" } },
                },
            },
        },
    })
    -- key maps
    map({ "i", "s" }, "<a-p>", function()
        if ls.expand_or_jumpable() then
            ls.expand()
        end
    end)

    map({ "i", "s" }, "<c-j>", function()
        if ls.jumpable(1) then
            ls.jump(1)
        end
    end)

    map({ "i", "s" }, "<c-k>", function()
        if ls.jumpable(-1) then
            ls.jump(-1)
        end
    end)
    map({ "i", "s" }, "<c-l>", function()
        if ls.choice_active() then
            require('luasnip.extras.select_choice')()
        else
            local t = os.date("*t")
            local time = string.format("%02d:%02d:%02d", t.hour, t.min, t.sec)
            print(time)
        end
    end)

    -- map({ "i", "s" }, "<c-j>","<Plug>luasnip-next-choice", opt)
    -- map({ "i", "s" }, "<c-k>","<Plug>luasnip-prev-choice", opt)
--     map({ "i", "s" }, "<c-j>", function()
--         if ls.choice_active() then
--             ls.change_choice(1)
--         else
--             local t = os.date("*t")
--             local time = string.format("%02d:%02d:%02d", t.hour, t.min, t.sec)
--             print(time)
--         end
--     end)
--
--     map({ "i", "s" }, "<c-k>", function()
--         if ls.choice_active() then
--             ls.change_choice(-1)
--         end
--     end)
end
