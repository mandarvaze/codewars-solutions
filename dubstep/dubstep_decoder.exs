defmodule SongDecoder do
  def decode_song(song) do
    String.split(song, "WUB")
    |> Enum.filter(fn x-> String.length(x) != 0 end)
    |> Enum.join(" ")
  end
end
