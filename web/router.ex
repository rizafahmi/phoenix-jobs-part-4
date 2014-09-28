defmodule PhoenixJobsFour.Router do
  use Phoenix.Router

  scope alias: PhoenixJobsFour do
    get "/", PageController, :index, as: :pages
    resources "/jobs", JobController
    get "/users/new", UserController, :new, as: :user
  end

end
