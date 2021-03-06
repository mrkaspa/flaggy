defmodule Flaggy.ApplicationView do
  alias Flaggy.Image

  def image_url(user) do
    Image.url({user.image, user})
    |> String.split("?")
    |> hd
  end

end
