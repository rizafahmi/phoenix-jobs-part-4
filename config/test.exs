use Mix.Config

config :phoenix, PhoenixJobsFour.Router,
  port: System.get_env("PORT") || 4001,
  ssl: false,
  cookies: true,
  session_key: "_phoenix_jobs_four_key",
  session_secret: "D&QUM&0=)&1O#PP!Z%T_*D(Z16)Z!#R!Q71L5XEYP1FJV$(IOU@NTJ+W+)2W(IIB@HBWTF%DR4("

config :phoenix, :code_reloader,
  enabled: true

config :logger, :console,
  level: :debug


