defmodule Fizzbuzz.Recursive do

  import Fizzbuzz.Print

  def perform(total_count) when total_count >= 0 do
    total_count |>
    say() |>
    Enum.reverse() |>
    print()
  end

  defp say(count) when count == 0 do
    []
  end

  defp say(count) when rem(count, 3) == 0 and rem(count, 5) == 0 do
    ["FizzBuzz" | say(count - 1)]
  end

  defp say(count) when rem(count, 3) == 0 do
    ["Fizz" | say(count - 1)]
  end

  defp say(count) when rem(count, 5) == 0 do
    ["Buzz" | say(count - 1)]
  end

  defp say(count) do
    [Integer.to_string(count) | say(count - 1)]
  end
end
