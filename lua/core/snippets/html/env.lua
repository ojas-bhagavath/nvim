return {
    s(
        { trig = "html5" },
        fmt(
            [[
<!doctype html>
<html lang="{}">
    <head>
        <base href="{}" target="{}"/>
        <link rel="stylesheet" href="{}" />
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>{}</title>
    </head>
    <body>
        {}
    </body>
</html>
            ]],
            {
                i(1, "en"),
                i(2),
                i(3, "_self"),
                i(4),
                i(5),
                i(6),
            },
            {
                delimiters = "{}",
            }
        )
    ),
}
