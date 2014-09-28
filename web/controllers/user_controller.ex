defmodule PhoenixJobsFour.UserController do
  use Phoenix.Controller
  alias PhoenixJobsFour.Router

  def new(conn, _params) do
    render conn, "new"
  end

  def create(conn, _params) do

    redirect conn, Router.pages_path(:index)

  end
end
