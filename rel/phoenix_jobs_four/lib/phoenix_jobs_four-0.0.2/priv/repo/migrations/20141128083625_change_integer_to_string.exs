defmodule PhoenixJobsFour.Repo.Migrations.ChangeIntegerToString do
  use Ecto.Migration

  def up do
    "ALTER TABLE jobs ALTER COLUMN created_by TYPE varchar (75)"
  end

  def down do
    "ALTER TABE jobs ALTER COLUMN created_by TYPE integer"
  end
end
