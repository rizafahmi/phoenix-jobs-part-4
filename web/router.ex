defmodule PhoenixJobsFour.Router do
  use Phoenix.Router

  scope alias: PhoenixJobsFour do
    get "/", PageController, :index, as: :pages
    resources "/jobs", JobController
  end

end
