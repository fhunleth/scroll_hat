defmodule ScrollHat.Font do
  @empty [[], [], [], [], [], [], []]

  def graph(text) do
    for g <- String.graphemes(text), reduce: @empty do
      acc ->
        Enum.zip_with(acc, graphmeme_matrix(g), &(&1 ++ &2))
    end
  end

  defp graphmeme_matrix(" ") do
    [
      [0, 00],
      [0, 00],
      [0, 00],
      [0, 00],
      [0, 00],
      [0, 00],
      [0, 00]
    ]
  end

  defp graphmeme_matrix("a") do
    [
      [00, 00, 00, 00, 00],
      [00, 11, 00, 11, 00],
      [11, 00, 11, 11, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 11, 11, 00],
      [00, 11, 00, 11, 00]
    ]
  end

  defp graphmeme_matrix("A") do
    [
      [00, 11, 11, 00, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00],
      [11, 11, 11, 11, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 11, 11, 00],
      [11, 00, 00, 11, 00]
    ]
  end

  defp graphmeme_matrix("b") do
    [
      [00, 00, 00, 00],
      [11, 00, 00, 00],
      [11, 00, 00, 00],
      [11, 11, 00, 00],
      [11, 00, 11, 00],
      [11, 00, 11, 00],
      [11, 11, 00, 00]
    ]
  end

  defp graphmeme_matrix("B") do
    [
      [11, 11, 00, 00],
      [11, 00, 11, 00],
      [11, 11, 00, 00],
      [11, 11, 00, 00],
      [11, 00, 11, 00],
      [11, 00, 11, 00],
      [11, 11, 00, 00]
    ]
  end

  defp graphmeme_matrix("c") do
    [
      [00, 00, 00, 00, 00],
      [00, 11, 11, 00, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 00, 00],
      [11, 00, 00, 00, 00],
      [11, 00, 00, 11, 00],
      [00, 11, 11, 00, 00]
    ]
  end

  defp graphmeme_matrix("C") do
    [
      [00, 11, 11, 00],
      [11, 00, 00, 11],
      [11, 00, 00, 00],
      [11, 00, 00, 00],
      [11, 00, 00, 00],
      [11, 00, 00, 11],
      [00, 11, 11, 00]
    ]
  end

  defp graphmeme_matrix("d") do
    [
      [00, 00, 00, 00],
      [00, 00, 11, 00],
      [00, 00, 11, 00],
      [00, 11, 11, 00],
      [11, 00, 11, 00],
      [11, 00, 11, 00],
      [00, 11, 11, 00]
    ]
  end

  defp graphmeme_matrix("D") do
    [
      [11, 11, 11, 00, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00],
      [11, 11, 11, 00, 00]
    ]
  end

  defp graphmeme_matrix("e") do
    [
      [00, 00, 00, 00, 00],
      [00, 00, 00, 00, 00],
      [00, 11, 11, 00, 00],
      [11, 00, 00, 11, 00],
      [11, 11, 11, 11, 00],
      [11, 00, 00, 00, 00],
      [00, 11, 11, 11, 00]
    ]
  end

  defp graphmeme_matrix("E") do
    [
      [11, 11, 11, 11, 00],
      [11, 00, 00, 00, 00],
      [11, 00, 00, 00, 00],
      [11, 11, 11, 00, 00],
      [11, 00, 00, 00, 00],
      [11, 00, 00, 00, 00],
      [11, 11, 11, 11, 00]
    ]
  end

  defp graphmeme_matrix("f") do
    [
      [00, 00, 11, 00, 00],
      [00, 11, 00, 11, 00],
      [00, 11, 00, 00, 00],
      [11, 11, 11, 00, 00],
      [00, 11, 00, 00, 00],
      [00, 11, 00, 00, 00],
      [00, 11, 00, 00, 00]
    ]
  end

  defp graphmeme_matrix("F") do
    [
      [11, 11, 11, 11, 00],
      [11, 00, 00, 00, 00],
      [11, 00, 00, 00, 00],
      [11, 11, 11, 00, 00],
      [11, 00, 00, 00, 00],
      [11, 00, 00, 00, 00],
      [11, 00, 00, 00, 00]
    ]
  end

  defp graphmeme_matrix("g") do
    [
      [00, 11, 00, 00],
      [11, 00, 11, 00],
      [11, 00, 11, 00],
      [00, 11, 11, 00],
      [00, 00, 11, 00],
      [11, 00, 11, 00],
      [00, 11, 00, 00]
    ]
  end

  defp graphmeme_matrix("G") do
    [
      [00, 11, 11, 00, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 00, 00],
      [11, 00, 11, 11, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00],
      [00, 11, 11, 00, 00]
    ]
  end

  defp graphmeme_matrix("h") do
    [
      [00, 00, 00, 00],
      [11, 00, 00, 00],
      [11, 00, 00, 00],
      [11, 11, 00, 00],
      [11, 00, 11, 00],
      [11, 00, 11, 00],
      [11, 00, 11, 00]
    ]
  end

  defp graphmeme_matrix("H") do
    [
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00],
      [11, 11, 11, 11, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00]
    ]
  end

  defp graphmeme_matrix("i") do
    [
      [00, 00],
      [11, 00],
      [00, 00],
      [11, 00],
      [11, 00],
      [11, 00],
      [11, 00]
    ]
  end

  defp graphmeme_matrix("I") do
    [
      [11, 11, 11, 00],
      [00, 11, 00, 00],
      [00, 11, 00, 00],
      [00, 11, 00, 00],
      [00, 11, 00, 00],
      [00, 11, 00, 00],
      [11, 11, 11, 00]
    ]
  end

  defp graphmeme_matrix("j") do
    [
      [00, 00, 11, 00],
      [00, 00, 00, 00],
      [00, 00, 11, 00],
      [00, 00, 11, 00],
      [00, 00, 11, 00],
      [11, 00, 11, 00],
      [00, 11, 00, 00]
    ]
  end

  defp graphmeme_matrix("J") do
    [
      [00, 11, 11, 11],
      [00, 00, 11, 00],
      [00, 00, 11, 00],
      [00, 00, 11, 00],
      [00, 00, 11, 00],
      [11, 00, 11, 00],
      [00, 11, 00, 00]
    ]
  end

  defp graphmeme_matrix("k") do
    [
      [00, 00, 00, 00],
      [11, 00, 00, 00],
      [11, 00, 11, 00],
      [11, 11, 00, 00],
      [11, 11, 00, 00],
      [11, 00, 11, 00],
      [11, 00, 11, 00]
    ]
  end

  defp graphmeme_matrix("K") do
    [
      [11, 00, 00, 11, 00],
      [11, 00, 11, 00, 00],
      [11, 11, 00, 00, 00],
      [11, 00, 00, 00, 00],
      [11, 11, 00, 00, 00],
      [11, 00, 11, 00, 00],
      [11, 00, 00, 11, 00]
    ]
  end

  defp graphmeme_matrix("l") do
    [
      [00, 00],
      [11, 00],
      [11, 00],
      [11, 00],
      [11, 00],
      [11, 00],
      [11, 00]
    ]
  end

  defp graphmeme_matrix("L") do
    [
      [11, 00, 00],
      [11, 00, 00],
      [11, 00, 00],
      [11, 00, 00],
      [11, 00, 00],
      [11, 00, 00],
      [11, 11, 11]
    ]
  end

  defp graphmeme_matrix("m") do
    [
      [00, 00, 00, 00, 00, 00],
      [11, 00, 00, 00, 11, 00],
      [11, 11, 00, 11, 11, 00],
      [11, 00, 11, 00, 11, 00],
      [11, 00, 11, 00, 11, 00],
      [11, 00, 00, 00, 11, 00],
      [11, 00, 00, 00, 11, 00]
    ]
  end

  defp graphmeme_matrix("M") do
    [
      [11, 00, 00, 00, 11, 00],
      [11, 11, 00, 11, 11, 00],
      [11, 00, 11, 00, 11, 00],
      [11, 00, 11, 00, 11, 00],
      [11, 00, 00, 00, 11, 00],
      [11, 00, 00, 00, 11, 00],
      [11, 00, 00, 00, 11, 00]
    ]
  end

  defp graphmeme_matrix("n") do
    [
      [00, 00, 00, 00, 00],
      [00, 00, 00, 00, 00],
      [11, 00, 11, 00, 00],
      [11, 11, 00, 11, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00]
    ]
  end

  defp graphmeme_matrix("N") do
    [
      [11, 00, 00, 00, 11, 00],
      [11, 11, 00, 00, 11, 00],
      [11, 00, 11, 00, 11, 00],
      [11, 00, 00, 11, 11, 00],
      [11, 00, 00, 00, 11, 00],
      [11, 00, 00, 00, 11, 00],
      [11, 00, 00, 00, 11, 00]
    ]
  end

  defp graphmeme_matrix("o") do
    [
      [00, 00, 00, 00, 00],
      [00, 11, 11, 00, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00],
      [00, 11, 11, 00, 00]
    ]
  end

  defp graphmeme_matrix("O") do
    [
      [00, 11, 11, 00, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00],
      [00, 11, 11, 00, 00]
    ]
  end

  defp graphmeme_matrix("p") do
    [
      [00, 00, 00, 00],
      [11, 00, 00, 00],
      [11, 11, 11, 00],
      [11, 00, 11, 00],
      [11, 11, 11, 00],
      [11, 00, 00, 00],
      [11, 00, 00, 00]
    ]
  end

  defp graphmeme_matrix("P") do
    [
      [11, 11, 11, 00, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00],
      [11, 11, 11, 00, 00],
      [11, 00, 00, 00, 00],
      [11, 00, 00, 00, 00],
      [11, 00, 00, 00, 00]
    ]
  end

  defp graphmeme_matrix("q") do
    [
      [00, 00, 00, 00, 00],
      [00, 00, 11, 00, 00],
      [11, 11, 11, 00, 00],
      [11, 00, 11, 00, 00],
      [11, 11, 11, 00, 00],
      [00, 00, 11, 00, 00],
      [00, 00, 11, 11, 00]
    ]
  end

  defp graphmeme_matrix("Q") do
    [
      [00, 11, 11, 00, 00, 00],
      [11, 00, 00, 11, 00, 00],
      [11, 00, 00, 11, 00, 00],
      [11, 00, 00, 11, 00, 00],
      [11, 00, 00, 11, 00, 00],
      [11, 00, 00, 11, 00, 00],
      [00, 11, 11, 11, 11, 00]
    ]
  end

  defp graphmeme_matrix("r") do
    [
      [00, 00, 00, 00],
      [11, 00, 00, 00],
      [11, 11, 11, 00],
      [11, 00, 11, 00],
      [11, 00, 00, 00],
      [11, 00, 00, 00],
      [11, 00, 00, 00]
    ]
  end

  defp graphmeme_matrix("R") do
    [
      [11, 11, 11, 00, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00],
      [11, 11, 11, 00, 00],
      [11, 00, 11, 00, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00]
    ]
  end

  defp graphmeme_matrix("s") do
    [
      [00, 00, 00, 00, 00],
      [00, 11, 11, 00, 00],
      [11, 00, 00, 11, 00],
      [00, 11, 00, 00, 00],
      [00, 00, 11, 00, 00],
      [11, 00, 00, 11, 00],
      [00, 11, 11, 00, 00]
    ]
  end

  defp graphmeme_matrix("S") do
    [
      [00, 11, 11, 11, 00, 00],
      [11, 00, 00, 00, 11, 00],
      [00, 11, 00, 00, 00, 00],
      [00, 00, 11, 00, 00, 00],
      [00, 00, 00, 11, 00, 00],
      [11, 00, 00, 00, 11, 00],
      [00, 11, 11, 11, 00, 00]
    ]
  end

  defp graphmeme_matrix("t") do
    [
      [00, 00, 00, 00, 00],
      [00, 11, 00, 00, 00],
      [11, 11, 11, 11, 00],
      [00, 11, 00, 00, 00],
      [00, 11, 00, 00, 00],
      [00, 11, 00, 11, 00],
      [00, 00, 11, 00, 00]
    ]
  end

  defp graphmeme_matrix("T") do
    [
      [11, 11, 11, 11, 11],
      [00, 00, 11, 00, 00],
      [00, 00, 11, 00, 00],
      [00, 00, 11, 00, 00],
      [00, 00, 11, 00, 00],
      [00, 00, 11, 00, 00],
      [00, 00, 11, 00, 00]
    ]
  end

  defp graphmeme_matrix("u") do
    [
      [00, 00, 00, 00, 00],
      [00, 00, 00, 00, 00],
      [11, 00, 11, 00, 00],
      [11, 00, 11, 00, 00],
      [11, 00, 11, 00, 00],
      [11, 00, 11, 00, 00],
      [00, 11, 00, 00, 00]
    ]
  end

  defp graphmeme_matrix("U") do
    [
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00],
      [11, 00, 00, 11, 00],
      [00, 11, 11, 00, 00]
    ]
  end

  defp graphmeme_matrix("v") do
    [
      [00, 00, 00, 00, 00],
      [11, 00, 00, 00, 11],
      [11, 00, 00, 00, 11],
      [11, 11, 00, 11, 11],
      [00, 11, 00, 11, 00],
      [00, 11, 00, 11, 00],
      [00, 00, 11, 00, 00]
    ]
  end

  defp graphmeme_matrix("V") do
    [
      [11, 00, 00, 00, 11],
      [11, 00, 00, 00, 11],
      [11, 00, 00, 00, 11],
      [11, 11, 00, 11, 11],
      [00, 11, 00, 11, 00],
      [00, 11, 00, 11, 00],
      [00, 00, 11, 00, 00]
    ]
  end

  defp graphmeme_matrix("w") do
    [
      [00, 00, 00, 00, 00],
      [00, 00, 00, 00, 00],
      [11, 00, 00, 00, 11],
      [11, 00, 11, 00, 11],
      [11, 00, 11, 00, 11],
      [11, 11, 11, 11, 11],
      [00, 11, 00, 11, 00]
    ]
  end

  defp graphmeme_matrix("W") do
    [
      [11, 00, 00, 00, 11],
      [11, 00, 00, 00, 11],
      [11, 00, 00, 00, 11],
      [11, 00, 11, 00, 11],
      [11, 00, 11, 00, 11],
      [11, 11, 11, 11, 11],
      [00, 11, 00, 11, 00]
    ]
  end

  defp graphmeme_matrix("x") do
    [
      [00, 00, 00, 00],
      [00, 00, 00, 00],
      [00, 00, 00, 00],
      [11, 00, 11, 00],
      [00, 11, 00, 00],
      [00, 11, 00, 00],
      [11, 00, 11, 00]
    ]
  end

  defp graphmeme_matrix("X") do
    [
      [11, 00, 00, 00, 11, 00],
      [00, 11, 00, 11, 00, 00],
      [00, 11, 00, 11, 00, 00],
      [00, 00, 11, 00, 00, 00],
      [00, 11, 00, 11, 00, 00],
      [00, 11, 00, 11, 00, 00],
      [11, 00, 00, 00, 11, 00]
    ]
  end

  defp graphmeme_matrix("y") do
    [
      [00, 00, 00, 00],
      [11, 00, 11, 00],
      [11, 00, 11, 00],
      [00, 11, 11, 00],
      [00, 00, 11, 00],
      [11, 00, 11, 00],
      [00, 11, 00, 00]
    ]
  end

  defp graphmeme_matrix("Y") do
    [
      [11, 00, 11, 00],
      [11, 00, 11, 00],
      [11, 00, 11, 00],
      [00, 11, 00, 00],
      [00, 11, 00, 00],
      [00, 11, 00, 00],
      [00, 11, 00, 00]
    ]
  end

  defp graphmeme_matrix("z") do
    [
      [00, 00, 00, 00],
      [00, 00, 00, 00],
      [11, 11, 11, 00],
      [00, 00, 11, 00],
      [00, 11, 00, 00],
      [11, 00, 00, 00],
      [11, 11, 11, 00]
    ]
  end

  defp graphmeme_matrix("Z") do
    [
      [11, 11, 11, 11, 00],
      [00, 00, 00, 11, 00],
      [00, 00, 00, 11, 00],
      [00, 00, 11, 00, 00],
      [00, 11, 00, 00, 00],
      [11, 00, 00, 00, 00],
      [11, 11, 11, 11, 00]
    ]
  end
end
