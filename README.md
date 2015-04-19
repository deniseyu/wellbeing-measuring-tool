# Wellbeing Measurement Tool

In order to run this app locally, you will need the following dependencies:

* Ruby
* Bundler
* Rails
* PostgresQL
* Github CLI

To start the server:

```
git clone https://github.com/deniseyu/wellbeing-measuring-tool
cd wellbeing-measuring-tool
bundle install
rake db:create db:migrate RAILS_ENV=development
rails s
```

To launch Rails Console, run ```rails c``` .
