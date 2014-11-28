defmodule PhoenixJobsFour.Repo.Migrations.CreateJob do
  use Ecto.Migration

  def up do
    ["CREATE TABLE jobs(id serial primary key, title varchar(125), job_type varchar(50), description text, job_status varchar(50))",
      "INSERT INTO jobs(title, job_type, description, job_status, created_by) VALUES ('Elixir Expert Needed', 'Remote', 'Elixir expert needed for writing article about Elixir every single week or two.', 'Part Time', 'rizafahmi@gmail.com')"
      ]
  end

  def down do
    "DROP TABLE jobs"
  end
end
