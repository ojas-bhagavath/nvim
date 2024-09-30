return {
    s("today", {
        c(1, {
            f(function()
                return os.date("%Y%m%d")
            end),
            f(function()
                return os.date("%Y-%m-%d")
            end),
            f(function()
                return os.date("%d%m%Y")
            end),
            f(function()
                return os.date("%d/%m/%Y")
            end),
            f(function()
                return os.date("%d %b %Y")
            end),
            f(function()
                return os.date("%d %B %Y")
            end),
        }),
    }),
}
