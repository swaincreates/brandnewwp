
# WordPress Starter


A simple but comprehensive wordpress installation setup that keeps the standard WordPress structure

* Capistrano for deploying code
* Theme based off of Automattic's _s theme but with bootstrap and gulp
* WP-Sync-DB Plugins for cyncing DB and Uploads

## Installation

#### Dependencies

* OSX/Linux
* Ruby
* Curl
* Tar

#### Install

1. Clone repo using `git clone --recursive` into your directory to download with submodules
2. Run `ruby prepare.rb` to delete git files and move wordpress to root directory
3. Find and Replace `brandnewtheme` to your theme name
4. `npm install` in theme directory
5. `gulp` in theme directory for compilation, watch files and livereload

## Usage

Configure the Capistrano files in config. Run `bundle exec cap dev deploy` to deploy to your development server


### To Do List

