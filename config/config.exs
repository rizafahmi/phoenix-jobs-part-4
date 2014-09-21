# This file is responsible for configuring your application
use Mix.Config

# Note this file is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project.

config :phoenix, PhoenixJobsFour.Router,
  port: System.get_env("PORT"),
  ssl: false,
  static_assets: true,
  cookies: true,
  session_key: "_phoenix_jobs_four_key",
  session_secret: "D&QUM&0=)&1O#PP!Z%T_*D(Z16)Z!#R!Q71L5XEYP1FJV$(IOU@NTJ+W+)2W(IIB@HBWTF%DR4(",
  catch_errors: true,
  debug_errors: false,
  error_controller: PhoenixJobsFour.PageController

config :phoenix, :code_reloader,
  enabled: false

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. Note, this must remain at the bottom of
# this file to properly merge your previous config entries.
import_config "#{Mix.env}.exs"
