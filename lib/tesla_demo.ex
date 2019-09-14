defmodule TeslaDemo do
  @moduledoc """
  Documentation for TeslaDemo.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://api.github.com"
  plug Tesla.Middleware.Headers, %{"User-Agent" => "tesla"}
  plug Tesla.Middleware.JSON

end
