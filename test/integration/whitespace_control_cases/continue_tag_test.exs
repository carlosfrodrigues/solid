import WhitespaceTrimHelper

test_permutations "continue tag outside for body" do
"########################\n\nthis should print\n\n{% continue %}\n\nthis should not print\n\n########################\n"
end

test_permutations "continue tag inside for body" do
  """
  ########################

  {% for i in (1..5) %}

    {% if i == 4 %}

      x

      {% continue %}

    {% else %}

      {{ i }}

    {% endif %}

  {% endfor %}

  ########################
  """
end
