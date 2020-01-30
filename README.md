## Rails App using a background job with Sidekiq

### Used libraries

- ruby `2.6.5`
- rails `5.2.3`
- sidekiq
- sidekiq-scheduler
- redis

### Installation

- run `bundle` to install the gems dependencies
- run `rails db:setup` to create and init the databases (see `seeds.rb` for more details)

### Run

Docker is used to run the application in a container:
- navigate to `docker/development` directory in your Terminal
- run `docker-compose build`
- run `docker-compose run`

You should see 4 services started successfully:

- Starting development_db_1    ... done
- Starting development_redis_1 ... done
- Recreating development_web_1     ... done
- Recreating development_sidekiq_1 ... done

Navigate to `localhost:3000/posts` to see 10 created posts.

You ca also visualize Sidekiq Web UI dashboard by pointing your browser to `localhost:3000/sidekiq`.

Enjoy!

