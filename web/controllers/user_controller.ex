defmodule PhoenixJobsFour.UserController do
  use Phoenix.Controller
  alias PhoenixJobsFour.Router

  def new(conn, _params) do
    render conn, "new"
  end
end
