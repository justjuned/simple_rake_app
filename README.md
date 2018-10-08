# README

Steps necessary to get the application up and running

* Database creation
  * **Migration:** `rake db:migrate` to setup schema.
  * **Seed:** `rake db:seed` populate the database tables.
  
* After successfully running the above commands paste in below command into your terminal within the app repo.
```ruby
rackup config.ru
```

#### _Once server is started type below curl command into the terminal to see results._
```curl
curl -XGET -i http://admin:abc123@localhost:9292/users\?name\=juned
```

#### or open in browser:
[http://admin:abc123@localhost:9292/users\?name\=juned](http://admin:abc123@localhost:9292/users\?name\=juned)
