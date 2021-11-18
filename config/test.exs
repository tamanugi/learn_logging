import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :learn_logging, LearnLogging.Repo,
  database: Path.expand("../learn_logging_test.db", Path.dirname(__ENV__.file)),
  pool_size: 5,
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :learn_logging, LearnLoggingWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "ezwvafTthhI6c705/X5FtLIMHEMSPDN9k8FQQ8MSINZVPPbadwzu6ybBX5h6G6uX",
  server: false

# In test we don't send emails.
config :learn_logging, LearnLogging.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
