# rubhanazeem/github_search

## Environment

- Ruby 2.6.5
- Rails 5.2.3
- PostgreSQL
- Puma

## Setup

#### 1. Install Dependencies

1. Open Terminal and get the Repo
   1. Clone this repo `https://github.com/rubhanazeem/github_search.git`
   2. `cd github_search` into the repo.
2. Install Ruby through `rbenv`
   1. `rbenv install 2.6.5`
3. Install bundler
   1. `gem install bundler`
   
#### 2. Create the database
1. `cp config/database.yml.example config/database.yml`
2. Set username and password if required
3. `bundle exec rails db:setup`

#### 3. Start the server
1. `rails s`
    1. Visit http://localhost:3000/ to view the installation result.