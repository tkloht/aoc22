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
end
