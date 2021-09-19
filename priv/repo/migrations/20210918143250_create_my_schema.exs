defmodule EctoBug.Repo.Migrations.CreateMySchema do
  use Ecto.Migration

  def change do
    create table(:my_schema) do
      add :title, :string
      add :view_count, :integer
    end
  end
end
