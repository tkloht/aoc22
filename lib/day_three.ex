defmodule Aoc22.Day3 do

  def findValue (grapheme) do
    reference = String.graphemes("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")
    Enum.find_index(reference, fn x -> x == grapheme end) + 1
  end

  def one (input) do

    input
    |> String.split("\n")
    |> Enum.map(fn line ->
      {left, right} = line |> String.split_at(Integer.floor_div(String.length(line), 2) )

      left
      |> String.graphemes()
      |> Enum.find(fn x ->String.contains?(right, x) end)
      |> findValue()

    end)
    |> Enum.reduce(fn a, b -> a + b end)

  end

  def two (input) do

    input
    |> String.split("\n")
    |> Enum.chunk_every(3)
    |> Enum.map(fn [a, b, c] ->

      String.graphemes(a)
      |> Enum.find(fn x ->String.contains?(b, x) && String.contains?(c, x) end)
      |> findValue()
    end)
    |> Enum.reduce(fn a, b -> a + b end)

  end

end
