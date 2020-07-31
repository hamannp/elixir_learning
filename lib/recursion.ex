defmodule Recursion do
  defmodule Evens do
    def select(input_collection) do
      input_collection |>
      evens([])        |>
      Enum.reverse     |>
      Enum.join(", ")  |>
      IO.puts
    end

    def evens([], output) do
      output
    end

    def evens([number | tail], output) when number == 0 do
      evens(tail, output)
    end

    def evens([number | tail], output) when rem(number, 2) == 0 do
      evens(tail, [Integer.to_string(number) | output])
    end

    def evens([number | tail], output) when rem(number, 2) != 0 do
      evens(tail, output)
    end
  end

  defmodule Reverse do
    def reverse(source) do
      source |>
      String.graphemes |>
      reverse_loop([]) |>
      Enum.join |>
      IO.puts
    end

    defp reverse_loop([], output), do: output

    defp reverse_loop([head | tail], output) do
      reverse_loop(tail, [head] ++ output)
    end
  end

  defmodule Fibonacci do
    def print_fibs(count) do
      count |>
      fibs([]) |>
      Enum.map(&(Integer.to_string(&1))) |>
      Enum.join(",") |>
      IO.puts
    end

    def fibs(count, output) when count == 0, do: output

    def fibs(count, output) do
      fibs(count - 1, [fib(count) | output])
    end

    defp fib(number) when number == 0 or number == 1, do: 1

    defp fib(number) do
      fib(number - 1) + fib(number - 2)
    end
  end

  defmodule Factorial do
    def calculate(number) do
      number |>
      fac |>
      Integer.to_string |>
      IO.puts
    end

    defp fac(number) when number == 0 or number == 1, do: 1
    defp fac(number), do: number * fac(number - 1)
  end

end

