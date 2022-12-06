defmodule Aoc22.Day4 do

  def parse(item) do
    [head, tail] = String.split(item, "-")
    {startInt, _rem} = Integer.parse((head))
    {endInt, _rem2} = Integer.parse((tail))

    {startInt, endInt}
  end

  def one (input) do
    input
    |> String.split("\n")
    |> Enum.map(fn line ->
      line
      |> String.split(",")
      |> Enum.map(&parse/1)
      |> Enum.sort(fn {a, _}, {b, _} -> a <= b end)
    end)
    |> Enum.filter(fn [{a, b}, {c, d}] ->
      (b >= d) || (a == c && b < d)
    end)
    |> Enum.count()
  end

  def two (input) do
    input
    |> String.split("\n")
    |> Enum.map(fn line ->
      line
      |> String.split(",")
      |> Enum.map(&parse/1)
      |> Enum.sort(fn {a, _}, {b, _} -> a <= b end)
    end)
    |> Enum.filter(fn [{_a, b}, {c, _d}] ->
      b >= c
    end)
    |> Enum.count()
  end
end
