require "rvm/capistrano"                  # Load RVM's capistrano plugin.
set :rvm_type, :system
set :rvm_ruby_string, 'ruby-1.9.3-p362@wedding'        # Or whatever env you want it to run in.

# Bundler tasks
require 'bundler/capistrano'

set :domain, "bigwhiteweddingofterror.com"
set :application, "wedding"
set :deploy_to, "/var/www/#{application}"
 
set :user, "deploy"
set :use_sudo, false
 
set :scm, :git
set :repository,  "git@github.com:vogelbek/wedding.git"
set :branch, 'master'
set :git_shallow_clone, 1
 
role :web, domain
role :app, domain
role :db,  domain, :primary => true
 
set :deploy_via, :remote_cache