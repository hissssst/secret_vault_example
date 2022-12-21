import Config

{:ok, config} = SecretVault.Config.fetch_from_current_env(:playground)
password = SecretVault.fetch!(config, "database_password")

config :playground, :key, password
