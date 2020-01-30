class PostsDisplayJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Rails.logger.info "#{Time.current}: Found posts: #{Post.count}"
  end
end
