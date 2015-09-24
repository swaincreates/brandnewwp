# Set Repo
set :repo_url, 'git@github.com:xxxxxx/xxxxxx'

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/var/www/xxxxxxx'

# Default value for :linked_files is []
set :linked_files, fetch(:linked_files, []).push('wp-config.php')

# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push('wp-content/uploads')

# Default to ask for branch
ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call
# set :branch, master

# Default value for :log_level is :debug - use for more info
set :log_level, :info

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :pty is false
# set :pty, true

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do
    # If using Nginx do this.. if Apache then comment out.
    desc 'reload php5-fpm'
    task :reload_php5fpm do
      on roles(:all) do
        execute "sudo service php5-fpm reload"
      end
    end
    
  after :finished, :reload_php5fpm
end

namespace :startup do
  desc 'Add uploads and blank wp-config.php'
  task :config do
    on roles(:all) do
      execute "sudo mkdir #{fetch(:deploy_to)}/shared/wp-content/uploads"
      upload! ("wp-config-sample.php, #{fetch(:deploy_to)}/shared/wp-config.php")
      # execute "sudo touch #{fetch(:deploy_to)}/shared/wp-config.php"
    end
  end
end

