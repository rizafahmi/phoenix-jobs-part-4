defmodule PhoenixJobsFour.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def up do
    "CREATE TABLE users(username varchar(75) primary key,
    password varchar(125))"
  end

  def down do
    "DROP TABLE users"
  end
end
