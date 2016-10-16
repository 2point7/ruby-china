lock '~> 3.6.1'

set :application, 'tricing-china'
set :repo_url, 'git@github.com:2point7/ruby-china.git'
set :deploy_to, "/var/www/#{ fetch(:application) }"

set :puma_role, :app
set :puma_conf, "#{release_path}/config/puma-web.rb"

append :linked_files, *%w(config/secrets.yml config/database.yml config/config.yml
                          config/elasticsearch.yml config/redis.yml)
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system', 'public/assets', 'public/uploads'

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 10

after 'deploy:publishing', 'deploy:restart'
