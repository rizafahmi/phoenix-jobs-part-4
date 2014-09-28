defmodule PhoenixJobsFour.UserController do
  use Phoenix.Controller
  alias PhoenixJobsFour.Router

  def new(conn, _params) do
    render conn, "new"
  end

  def create(conn, params) do
    user = %PhoenixJobsFour.Users{username: params["username"], password: Crypto.md5(params["password"])}
    IO.inspect user
    PhoenixJobsFour.Repo.insert(user)

    redirect conn, Router.pages_path(:index)

  end
end
