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
end
