defmodule LearnLogging.Repo do
  use Ecto.Repo,
    otp_app: :learn_logging,
    adapter: Ecto.Adapters.SQLite3
end
