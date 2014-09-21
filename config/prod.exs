use Mix.Config

# NOTE: To get SSL working, you will need to set:
#
#     ssl: true,
#     keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#     certfile: System.get_env("SOME_APP_SSL_CERT_PATH"),
#
# Where those two env variables point to a file on disk
# for the key and cert

config :phoenix, PhoenixJobsFour.Router,
  port: System.get_env("PORT"),
  ssl: false,
  host: "example.com",
  cookies: true,
  session_key: "_phoenix_jobs_four_key",
  session_secret: "D&QUM&0=)&1O#PP!Z%T_*D(Z16)Z!#R!Q71L5XEYP1FJV$(IOU@NTJ+W+)2W(IIB@HBWTF%DR4("

config :logger, :console,
  level: :info,
  metadata: [:request_id]

