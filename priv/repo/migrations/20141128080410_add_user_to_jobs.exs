defmodule PhoenixJobsFour.Repo.Migrations.AddUserToJobs do
  use Ecto.Migration

  def up do
    "ALTER TABLE jobs ADD created_by integer"
  end

  def down do
    "ALTER TABLE jobs DROP COLUMN created_by"
  end
end
