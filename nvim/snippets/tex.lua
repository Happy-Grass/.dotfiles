local ls = require("luasnip") --{{{
local s = ls.s                --> snippet
local i = ls.i                --> insert node
local t = ls.t                --> text node
local d = ls.dynamic_node
local c = ls.choice_node
local f = ls.function_node
local sn = ls.snippet_node
local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep
local postfix = require("luasnip.extras.postfix").postfix
local snippets = {} --}}}

local function cs(trigger, nodes, opts)
    local snippet = s(trigger, nodes, opts)
    table.insert(snippets, snippet) -- insert snippet into appropriate table
end

cs(
    "trig6",
    c(1, {
        t("Ugh boring, a text node"),
        i(nil, "At least I can edit something now..."),
        f(function(args)
            return "Still only counts as text!!"
        end, {}),
    })
)

cs(
    "begin",
    fmt(
        [[
\begin{<>}
    <>
\end{<>}
]],
        {
            i(1, "document"),
            i(0, ""),
            f(function(args, snip)
                return args[1][1]
            end, { 1 }),
        },
        { delimiters = "<>" }
    )
)

cs(
    "partial",
    fmt(
        [[
\frac{\partial <>}{\partial <>}<>
]],
        {
            i(1, "u"),
            i(2, "x"),
            i(0, ""),
        },
        { delimiters = "<>" }
    )
)

cs(
    "frac",
    fmt(
        [[
\frac{<>}{<>}<>
]],
        {
            i(1, ""),
            i(2, ""),
            i(0, ""),
        },
        { delimiters = "<>" }
    )
)

cs(
    "diff",
    fmt(
        [[
\mathop{}\!{}\mathrm{d}<>
]],
        {
            i(0, ""),
        },
        { delimiters = "<>" }
    )
)

cs(
    "difrac",
    fmt(
        [[
\frac{\mathop{}\!{}\mathrm{d}<>}{\mathop{}\!{}\mathrm{d}<>}<>
]],
        {
            i(1, "u"),
            i(2, "x"),
            i(0, ""),
        },
        { delimiters = "<>" }
    )
)

cs(
    "lim",
    fmt(
        [[
\lim_{<> \rightarrow <>}{<>}<>
]],
        {
            i(1, "x"),
            i(2, "\\infty"),
            i(3, "func"),
            i(0, ""),
        },
        { delimiters = "<>" }
    )
)

cs(
    "int",
    fmt(
        [[
\int_{<>}^{<>} <> \mathop{}\!{}\mathrm{d}<>
]],
        {
            i(1, "0"),
            i(2, "\\infty"),
            i(3, "f(x)"),
            i(0, "x"),
        },
        { delimiters = "<>" }
    )
)

cs(
    "iint",
    fmt(
        [[
\iint_{<>}^{<>} <> \, \mathop{}\!{}\mathrm{d}<> \, \mathop{}\!{}\mathrm{d}<>
]],
        {
            i(1, "0"),
            i(2, "\\infty"),
            i(3, "f(x)"),
            i(4, "x"),
            i(0, "y"),
        },
        { delimiters = "<>" }
    )
)

cs(
    "iiint",
    fmt(
        [[
\iiint_{<>}^{<>} <> \, \mathop{}\!{}\mathrm{d}<> \, \mathop{}\!{}\mathrm{d}<> \, \mathop{}\!{}\mathrm{d}<>
]],
        {
            i(1, "0"),
            i(2, "\\infty"),
            i(3, "f(x)"),
            i(4, "x"),
            i(5, "y"),
            i(0, "z"),
        },
        { delimiters = "<>" }
    )
)

cs(
    "funcs",
    fmt(
        [[
\begin{equation}
<> =
\left\{
    \begin{array}{<>}
    <>
    \end{array}
\right.<>
\end{equation}
]],
        {
            i(1, "f(x)"),
            i(3, "ll"),
            i(2, "x & \\quad x \\leq 0\\\\"),
            i(0, ""),
        },
        { delimiters = "<>" }
    )
)

cs(
    "equalign",
    fmt(
        [[
\begin{equation} \begin{split}
<> &= <> \\
   &= <> \\
   <>
\end{spilt} \end{equation}\\<>
]],
        {
            i(1, "f(x)"),
            i(2, "x"),
            i(3, "x"),
            i(4, ""),
            i(0, ""),
        },
        { delimiters = "<>" }
    )
)

cs(
    "equleft",
    fmt(
        [[
\begin{equation}
\left\{
    \begin{array}{l}
    <>
    \end{array}
\right.
\end{equation}<>
]],
        {
            i(1, ""),
            i(0, ""),
        },
        { delimiters = "<>" }
    )
)
a = postfix(".br", {
    f(function(_, parent)
        return "[" .. parent.snippet.env.POSTFIX_MATCH .. "]"
    end, {}),
})
table.insert(snippets, a)
cs({ trig = "(%d)", regTrig = true, docTrig = "3" }, {
    f(function(args, snip)
        return string.rep("repeatme ", tonumber(snip.captures[1]))
    end, {}),
})

return snippets
