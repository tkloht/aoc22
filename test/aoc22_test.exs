defmodule Aoc22Test do
  use ExUnit.Case

  def readTestInput(name) do
    File.read!("./test/fixtures/#{name}")
  end

  test "day 1 part 1" do
      input = readTestInput("day1_1")
      assert Aoc22.Day1.one(input) == 24000
  end

  test "day 1 part 2" do
      input = readTestInput("day1_1")
      assert Aoc22.Day1.two(input) == 45000
  end

  test "day 2 part 1" do
    input = readTestInput("day2")
    assert Aoc22.Day2.one(input) == 15
  end

  test "day 2 part 2" do
    input = readTestInput("day2")
    assert Aoc22.Day2.two(input) == 12
  end

  test "day 3 part 1" do
    input = readTestInput("day3")
    assert Aoc22.Day3.one(input) == 157
  end

  test "day 3 part 2" do
    input = readTestInput("day3")
    assert Aoc22.Day3.two(input) == 70
  end

end
