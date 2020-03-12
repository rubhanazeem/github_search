# rubhanazeem/github_search

## Environment

- Ruby 2.6.5
- Rails 5.2.3
- PostgreSQL
- Puma
- RSpec for Rails testing

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
    
#### 4. Implementation
1. You can find the Github's search api implementation in `lib/github`
2. Search form implementation is available in `app/controllers/home_controller`
3. Exception handling is available in `application_controller`
4. Tests are available in `spec/controllers`