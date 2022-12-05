defmodule Aoc22Test do
  use ExUnit.Case

  def readTestInput(name) do
    File.read!("./test/fixtures/#{name}")
  end

  test "day 1 part 1" do
      input = readTestInput("day1_1")
      assert Aoc22.Day1.one(input) == 24000
  end

end
