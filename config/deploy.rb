# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, "tint_data"
set :repo_url, "git@github.com:wicros/tint_data.git"

# how many old releases do we want to keep, not much
set :keep_releases, 5

set :deploy_to, "/var/www/#{fetch(:application)}"

# files we want symlinking to specific entries in shared
set :linked_files, %w{config/database.yml config/secrets.yml}

# dirs we want symlinking to shared
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

server 'ec2-13-112-150-4.ap-northeast-1.compute.amazonaws.com', user: "ec2-user", roles: %w{app db web}
ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp
ask :rails_env, "production"

namespace :deploy do
  after :finishing, 'deploy:cleanup'
end

set :puma_threads, [1, 6]
set :puma_workers, 2
set :puma_bind, 'unix:///tmp/puma.sock'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
