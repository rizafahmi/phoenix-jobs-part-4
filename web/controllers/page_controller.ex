defmodule PhoenixJobsFour.PageController do
  use Phoenix.Controller

  def index(conn, _params) do
    jobs = PhoenixJobsFour.Queries.jobs_query
    user = get_session(conn, :username)
    render conn, "index", [jobs: jobs, user: user]
  end

  def not_found(conn, _params) do
    render conn, "not_found"
  end

  def error(conn, _params) do
    render conn, "error"
  end
end
