defmodule Aoc22.Day2 do

  def one (input) do
    input
    |> String.split("\n")
    |> Enum.map(fn line ->
      case line do
        # ABC XYZ
        "A X" -> 4
        "B Y" -> 5
        "C Z" -> 6
        "A Y" -> 8
        "A Z" -> 3
        "B X" -> 1
        "B Z" -> 6 + 3
        "C X" -> 6 + 1
        "C Y" -> 0 + 2
      end
    end)
    |> Enum.reduce(fn a, b -> a + b end )

  end

  def two (input) do
    input
    |> String.split("\n")
    |> Enum.map(fn line ->
      case line do
        # ABC XYZ
        "A X" -> 0 + 3 # lose scissor
        "B Y" -> 3 + 2 # draw paper
        "C Z" -> 6 + 1 # win rock
        "A Y" -> 3 + 1 # draw rock
        "A Z" -> 6 + 2 # win paper
        "B X" -> 0 + 1 # lose rock
        "B Z" -> 6 + 3 # win scissor
        "C X" -> 0 + 2 # lose paper
        "C Y" -> 3 + 3 # draw scissor
      end
    end)
    |> Enum.reduce(fn a, b -> a + b end )
  end


end
