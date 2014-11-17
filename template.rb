gem "twitter-bootstrap-rails"
gem "simple_form"

gem_group :test, :development do
  gem "rspec-rails"
  gem "capybara"
  gem "launchy"
  gem "guard-rspec"
  gem "rb-fsevent"
  gem "factory_girl_rails"
end

gem_group :test do
  gem "shoulda-matchers"
end

gem_group :development do
  gem "better_errors"
  gem "pry-rails"
  gem "pry-byebug"
  gem "quiet_assets"
  gem "awesome_print", require: "ap"
end

run "bundle install"

run "rm README.rdoc"
run "rm .gitignore"
generate("rspec:install")
generate("bootstrap:install", "static")
run "guard init"
run "curl 'https://raw.githubusercontent.com/wdi-sf-september-2014/rails_with_rspec_template/master/.rspec' -o './.rspec'"
run "curl 'https://raw.githubusercontent.com/wdi-sf-september-2014/rails_with_rspec_template/master/.gitignore' -o './.gitignore'"
run "curl 'https://raw.githubusercontent.com/wdi-sf-september-2014/rails_with_rspec_template/master/rails_helper.rb' -o './spec/rails_helper.rb'"
git :init
git add: '.'
git commit: '-a -m "Initial commit"'
