return {
    s(
        { trig = "html5" },
        fmt(
            [[
<!doctype html>
<html lang="{}">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>{}</title>
        <link rel="stylesheet" href="{}" />
    </head>
    <body>
        {}
    </body>
</html>
            ]],
            {
                i(1, "en"),
                i(2),
                i(3),
                i(4),
            },
            {
                delimiters = "{}",
            }
        )
    ),
}
