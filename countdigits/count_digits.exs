defmodule Countdigit do

  @doc """
  Algorithm:
  1. get the sqaure of number
  2. Convert it to a string
  3. Separate the letters from this string
  4. If the letter is the number (converted to a character) is the one we are
     looking for, filter it out.
  5. Now we have the list of lists
  6. Flatten into a single list
  7. Size of the list is the count we are looking for
  """
  def nb_dig(n, d) do
    for k <- 0..n do
        k * k
        |> Integer.to_string
        |> String.codepoints
        |> Enum.filter(fn(c) -> c == Integer.to_string(d) end)
    end
    |> List.flatten
    |> length
  end
end
