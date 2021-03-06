# #!/usr/bin/env puma
# #environment ENV['RAILS_ENV'] || 'production'
# #pidfile "/var/www/high-aviation-club/current/shared/tmp/pids/puma.pid"
# #stdout_redirect "/var/www/high-aviation-club/current/shared/tmp/log/stdout", "/var/www/high-aviation-club/current/shared/tmp/log/stderr"
# #threads 2, 16
# #workers 2
# #bind "unix:///var/www/high-aviation-club/current/shared/tmp/sockets/puma.sock"
# #daemonize true
#
# threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
# threads threads_count, threads_count
#
# # Specifies the `port` that Puma will listen on to receive requests; default is 3000.
# #
# port        ENV.fetch("PORT") { 3000 }
#
# # Specifies the `environment` that Puma will run in.
# #
# environment ENV.fetch("RAILS_ENV") { "development" }
#
# # Specifies the number of `workers` to boot in clustered mode.
# # Workers are forked webserver processes. If using threads and workers together
# # the concurrency of the application would be max `threads` * `workers`.
# # Workers do not work on JRuby or Windows (both of which do not support
# # processes).
# #
# # workers ENV.fetch("WEB_CONCURRENCY") { 2 }
#
# # Use the `preload_app!` method when specifying a `workers` number.
# # This directive tells Puma to first boot the application and load code
# # before forking the application. This takes advantage of Copy On Write
# # process behavior so workers use less memory.
# #
# #preload_app!
#
# # Allow puma to be restarted by `rails restart` command.
# plugin :tmp_restart
#
