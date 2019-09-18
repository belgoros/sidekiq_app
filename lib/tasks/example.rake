namespace :example do
  desc 'Imports shops data from Masterdata'
  task display_posts: :environment do
    puts "#{Time.current}: Created posts: #{Post.count}"
  end
end
