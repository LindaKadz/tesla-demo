defmodule TeslaDemo do
  @moduledoc """
  Documentation for TeslaDemo.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://api.github.com"
  plug Tesla.Middleware.Headers, [{"user-agent", "Tesla"}]
  plug Tesla.Middleware.JSON

  @doc """
  Gets all the issues in a selected repo of the user, this uses the GET request.

  ## Examples

      iex> TeslaDemo.issues("Podiihq", "nailinda")
      :world

  """

  def issues(user, project) do
    get("https://api.github.com/repos/#{user}/#{project}/issues")
  end

end
