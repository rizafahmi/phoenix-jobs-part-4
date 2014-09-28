defmodule PhoenixJobsFour.Router do
  use Phoenix.Router

  scope alias: PhoenixJobsFour do
    get "/", PageController, :index, as: :pages
    resources "/jobs", JobController
    get "/users/new", UserController, :new, as: :user
    get "/users/login", UserController, :login, as: :user
    post "/users", UserController, :create, as: :user
    post "/users/login", UserController, :login_process, as: :user
  end

end
