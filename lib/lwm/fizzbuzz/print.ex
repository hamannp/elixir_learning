defmodule Fizzbuzz.Print do
  def print([]) do
  end

  def print([head | tail]) do
    IO.puts(head)
    print(tail)
  end
end

