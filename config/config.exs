import Config

config :ecto_bug, EctoBug.MySQLRepo,
  database: "ecto_bug_my_sql_repo",
  username: "root",
  password: "pass",
  hostname: "localhost",
  priv: "priv/repo"

config :ecto_bug, EctoBug.Repo,
  database: "ecto_bug_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :ecto_bug,
  ecto_repos: [EctoBug.Repo, EctoBug.MySQLRepo]
