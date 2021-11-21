defmodule B1.Repo do
  use Ecto.Repo,
    otp_app: :b1,
    adapter: Ecto.Adapters.Postgres
end
