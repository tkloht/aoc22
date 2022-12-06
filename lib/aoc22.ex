defmodule Aoc22 do
  @moduledoc """
  Documentation for `Aoc22`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Aoc22.hello()
      :world

  """

  def read_input(name) do
    File.read!("./input/#{name}")
  end


  def day1_1 do
    read_input("day1")
    |> Aoc22.Day1.one()
    |> IO.inspect()
  end

  def day1_2 do
    read_input("day1")
    |> Aoc22.Day1.two()
    |> IO.inspect()
  end


  def day2_1 do
    read_input("day2")
    |> Aoc22.Day2.one()
    |> IO.inspect()
  end


  def day2_2 do
    read_input("day2")
    |> Aoc22.Day2.two()
    |> IO.inspect()
  end

  def day3_1 do
    read_input("day3")
    |> Aoc22.Day3.one()
    |> IO.inspect()
  end

  def day3_2 do
    read_input("day3")
    |> Aoc22.Day3.two()
    |> IO.inspect()
  end

  def day4_1 do
    read_input("day4")
    |> Aoc22.Day4.one()
    |> IO.inspect()
  end

  def day4_2 do
    read_input("day4")
    |> Aoc22.Day4.two()
    |> IO.inspect()
  end
end
