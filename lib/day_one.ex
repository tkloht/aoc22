defmodule Aoc22.Day1 do

  def handleLine("", [max, current]) do
    if max > current do
       [max, 0]
      else
        [current, 0]
      end
  end

  def handleLine(current, [globalMax, localMax]) do
    {currentNumber, _remainder} = Integer.parse((current))
    sum = localMax + currentNumber
    [globalMax, sum]
  end

  def one (input) do
    [globalMax, _localMax] = input
    |> String.split("\n")
    |> Enum.reduce([0, 0], &handleLine/2 )

    globalMax
  end

  def aggregateLists("", acc) do
    [0 | acc]
  end
  def aggregateLists(current, [acc | rest]) do
    {currentNumber, _remainder} = Integer.parse((current))
    [acc + currentNumber | rest]
  end


  def two (input) do
    input
    |> String.split("\n")
    |> Enum.reduce([0], &aggregateLists/2 )
    |> Enum.sort()
    |> Enum.slice(-3..-1)
    |> Enum.reduce(fn a, b -> a + b end)
  end
end
