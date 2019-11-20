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

You will need to open 3 separate tabs in your terminal:
- Tab 1:  fire up a redis-server by typing in `redis-server`
- Tab 2:  fire up your Sidekiq by typing in `bundle exec sidekiq`
- Tab 3: Fire up your Rails app server by typing in `rails s`

You should see in the `Tab 2` the below output (time and pid values will be different):
```
2019-09-18T15:19:21.676Z pid=11964 tid=ov6mrc3u4 INFO: Running in ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-darwin18]
2019-09-18T15:19:21.676Z pid=11964 tid=ov6mrc3u4 INFO: See LICENSE and the LGPL-3.0 for licensing details.
2019-09-18T15:19:21.676Z pid=11964 tid=ov6mrc3u4 INFO: Upgrade to Sidekiq Pro for more features and support: http://sidekiq.org
2019-09-18T15:19:21.676Z pid=11964 tid=ov6mrc3u4 INFO: Booting Sidekiq 6.0.0 with redis options {:id=>"Sidekiq-server-PID-11964", :url=>nil}
2019-09-18T15:19:21.713Z pid=11964 tid=ov6mrc3u4 INFO: Loading Schedule
2019-09-18T15:19:21.713Z pid=11964 tid=ov6mrc3u4 INFO: Scheduling posts_display {"class"=>"PostsDisplayJob", "every"=>"15s", "queue"=>"default"}
2019-09-18T15:19:21.715Z pid=11964 tid=ov6mrc3u4 INFO: Schedules Loaded
2019-09-18T15:19:21.715Z pid=11964 tid=ov6mrc3u4 INFO: Starting processing, hit Ctrl-C to stop
2019-09-18T15:19:36.881Z pid=11964 tid=ov6n2g03o INFO: queueing PostsDisplayJob (posts_display)
2019-09-18T15:19:36.882Z pid=11964 tid=ov6n2nt04 class=PostsDisplayJob jid=8797ac801c01b6537b9cfc2b INFO: start
2019-09-18 15:19:37 UTC: Found posts: 10
```

You ca also visualize Sidekiq Web UI dashboard by pointing your browser to `localhost:3000/sidekiq`.

Enjoy!

