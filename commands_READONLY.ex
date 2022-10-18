:debugger.start()
:int.ni(Solid.Parser.Base)
:int.break(Solid.Parser.Base, 18)
{:ok, template} = Elixir.Solid.parse("########################\n\nthis should print\n\n\n\n{%- continue %}\n\nthis should not print\n\n########################\n")
Solid.render(template, %{ "user" => %{ "name" => "José" } }) |> to_string
{:ok, template} = Elixir.Solid.parse("########################\n\n{% for i in (1..5) %}\n\n{% if i == 4 %}\n\nx\n\n{%- break %}\n\n{% else %}\n\n{{ i }}\n\n{% endif %}\n\n{% endfor %}\n\n########################")
