defmodule PhoenixJobsFour.JobController do
  use Phoenix.Controller
  alias PhoenixJobsFour.Router

  def index(conn, _params) do
    jobs = PhoenixJobsFour.Queries.jobs_query
    render conn, "index", jobs: jobs
  end

  def new(conn, _params) do
    render conn, "new"
  end

  def save(conn, params) do
    job = %PhoenixJobsFour.Jobs{title: params["title"], description: params["description"], job_type: params["type"], job_status: params["status"]}
    PhoenixJobsFour.Repo.insert(job)
    redirect conn, Router.pages_path(:index)
  end

  def job(conn, params) do
    job = PhoenixJobsFour.Queries.job_detail_query(params["id"])
    render conn, "job", [job: job, action: params["action"]]
  end

  def edit(conn, %{"id" => id}) do
    job = PhoenixJobsFour.Queries.job_detail_query(id)
    render conn, "edit", job: job
  end

  def update(conn, params) do
    IO.inspect params["type"]
    job = PhoenixJobsFour.Repo.get(PhoenixJobsFour.Jobs, params["id"])
    job = %{job | title: params["title"], description: params["description"],
      job_type: params["type"], job_status: params["status"]}
    PhoenixJobsFour.Repo.update(job)
    redirect conn, Router.pages_path(:index)
  end

  def destroy(conn, params) do
    job = PhoenixJobsFour.Queries.job_detail_query(params["id"])
    PhoenixJobsFour.Repo.delete(job)

    redirect conn, Router.pages_path(:index)
  end
end
