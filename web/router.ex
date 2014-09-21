defmodule PhoenixJobsFour.Router do
  use Phoenix.Router

  get "/", PhoenixJobsFour.PageController, :index, as: :pages

end
