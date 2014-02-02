source 'https://rubygems.org'
ruby '2.0.0'
gem 'rails', '4.0.2'

gem 'sass-rails', '4.0.1'
gem 'uglifier', '2.4.0'
gem 'coffee-rails', '4.0.1'
gem 'jquery-rails', '3.0.4'
gem 'jquery-turbolinks'         # fix issue where turbolinks prevents $(document).ready(); working properly
gem 'turbolinks', '2.1.0'
gem 'jbuilder', '1.5.3'
gem 'bcrypt-ruby', '3.1.2'

group :doc do
  gem 'sdoc', require: false
end

## dev gems
group :development, :test do
  gem 'sqlite3', '1.3.8'        # test database
  gem 'figaro', '0.7.0'         # env variables
  gem 'rspec-rails'             # RSpec
  gem 'rails_layout', '0.5.11'  # Bootstrap 3 layout generator
end

group :test do
  gem 'selenium-webdriver'      # needed by capybara
  gem 'capybara'
  gem 'factory_girl_rails'      # especially to test User model
end


## production gems
group :production do
  gem 'pg'                      # for heroku
  gem 'rails_12factor'          # for heroku
end


gem 'kaminari', '0.15.0'        # Paging
gem 'friendly_id', '5.0.2'      # Slugs and friendly id's
gem 'font-awesome-sass', '4.0.2'
gem 'devise', '3.2.2'           # User Authentication
gem 'bootstrap-sass', '3.0.3.0'
gem 'autoprefixer-rails'        # for CSS3 vendor prefixes