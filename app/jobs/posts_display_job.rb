class PostsDisplayJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "#{Time.current}: Found posts: #{Post.count}"
  end
end
