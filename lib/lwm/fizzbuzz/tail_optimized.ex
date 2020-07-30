defmodule Fizzbuzz.TailOptimized do

  import Fizzbuzz.Print

  def perform(total_count) when total_count >= 0 do
    total_count |>
    say([]) |>
    print()
  end

  defp say(count, output) when count == 0 do
    output
  end

  defp say(count, output) when rem(count, 3) == 0 and rem(count, 5) == 0 do
    say(count - 1, ["FizzBuzz" | output])
  end

  defp say(count, output) when rem(count, 3) == 0 do
    say(count - 1, ["Fizz" | output])
  end

  defp say(count, output) when rem(count, 5) == 0 do
    say(count - 1, ["Buzz" | output])
  end

  defp say(count, output) do
    say(count - 1, [Integer.to_string(count) | output])
  end
end
