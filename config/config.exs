import Config

config :ecto_bug, EctoBug.Repo,
  database: "ecto_bug_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :ecto_bug,
  ecto_repos: [EctoBug.Repo]
