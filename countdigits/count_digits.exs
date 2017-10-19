defmodule Countdigit do

  @doc """
  Algorithm:
  1. get the square of number
  2. Get the list of digits in this integer
  3. If the digit is the number we are looking for, filter it out.
  4. Now we have the list of lists
  5. Flatten into a single list
  6. Size of the list is the count we are looking for
  """
  def nb_dig(n, d) do
    for k <- 0..n do
        k * k
        |> Integer.digits
        |> Enum.filter(fn(n) -> n == d end)
    end
    |> List.flatten
    |> length
  end
end
