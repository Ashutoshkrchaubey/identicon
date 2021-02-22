defmodule Identicon do
  @moduledoc """
  Takes an input string and generates Identicon.
  """
  def main(input) do
    input
    |> hash_input
  end

  def hash_input(input) do
    :crypto.hash(:md5, input)
    |> :binary.bin_to_list
  end

end
