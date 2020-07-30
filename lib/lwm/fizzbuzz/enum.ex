defmodule Fizzbuzz.Enum do

  import Fizzbuzz.Print

  def say(number) when number <= 0 do
    :error
  end

  def say(number) do
    Enum.to_list(1..number) |>
    Enum.map(&text/1) |>
    print()
  end

  defp text(x) do
    "#{Integer.to_string(x)}: " <> (check(x, 3, "Fizz") <> check(x, 5, "Buzz"))
  end

  defp check(x, value, message) do
    if (rem(x, value) == 0), do: message, else: ""
  end
end
