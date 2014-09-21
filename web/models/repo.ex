defmodule PhoenixJobsFour.Repo do
    use Ecto.Repo, adapter: Ecto.Adapters.Postgres

    def conf do
      parse_url "ecto://riza:220281@localhost/phoenix_jobs_four"
    end

    def priv do
      app_dir(:phoenix_jobs_four, "priv/repo")
    end
end
