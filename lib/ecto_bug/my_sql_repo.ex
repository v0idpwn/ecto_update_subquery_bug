defmodule EctoBug.MySQLRepo do
  use Ecto.Repo,
    otp_app: :ecto_bug,
    adapter: Ecto.Adapters.MyXQL
end
