apt update -y
apt install -y build-essential
apt install -y libsqlite3-dev
apt install -y nodejs
apt install -y graphviz
apt install -y vim

gem install rails -v "5.2.1"
rails new sample -d sqlite3 -G

echo "gem 'rails-erd'" >> Gemfile
bundle install

# cd sample/
# rails g scaffold Memo datetime:timestamp title:string content:text
# rake db:migrate
# rake rake erd filetype=png title="モデル名"
