defmodule Collatz do

  @moduledoc """A collatz sequence, starting with a positive integern, is found by
  repeatedly applying the following function to n until n == 1 :

  collatz sequence

  n = { n / 2 for even n ;
  3n + 1 for odd n }


  A more detailed description of the collatz conjecture may be found on
  Wikipedia.https://en.wikipedia.org/wiki/Collatz_conjecture """

  import Integer

  def collatz(1) do
    "1"
  end

  @doc """
  The output should be printed in certain format, as mentioned in the codewars kata
  e.g.
  Collatz.collatz(2) # should return "2->1"
  Collatz.collatz(3) # should return "3->10->5->16->8->4->2->1"
  Collatz.collatz(4) # should return "4->2->1"
  """

  def collatz(n) do
    retval =
    if is_even(n) do
      div(n, 2)
    else
      3*n + 1
    end

    "#{n}->" <> collatz(retval)
  end
end
