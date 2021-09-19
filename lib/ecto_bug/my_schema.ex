defmodule EctoBug.MySchema do
  use Ecto.Schema

  schema "my_schema" do
    field :title, :string
    field :view_count, :integer
  end
end
