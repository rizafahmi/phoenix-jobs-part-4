defmodule PhoenixJobsFour.UserController do
  use Phoenix.Controller
  alias PhoenixJobsFour.Router
  alias Phoenix.Controller.Flash

  def new(conn, _params) do
    render conn, "new"
  end

  def create(conn, params) do
    user = %PhoenixJobsFour.Users{username: params["username"], password: Crypto.md5(params["password"])}
    PhoenixJobsFour.Repo.insert(user)

    redirect conn, Router.pages_path(:index)

  end

  def login(conn, _params) do
    render conn, "login"
  end

  def login_process(conn, params) do
    user = PhoenixJobsFour.Queries.login(params["username"], params["password"])
    if user == nil do
      conn
      |> Flash.put(:notice, "Username and or password was wrong")
      |> render "login"
    else
      conn
      |> Flash.put(:notice, "Login succees.")
      |> put_session(:username, params["username"])
      |> redirect Router.pages_path(:index)
    end
  end

  def logout(conn, _params) do
    conn
    |> put_session(:username, "")
    |> Flash.put(:notice, "Logout has been succeeded.")
    |> redirect Router.pages_path(:index)
  end
end
