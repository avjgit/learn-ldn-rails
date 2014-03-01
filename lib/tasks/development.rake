namespace :development do
  desc 'Create random tweets for users'
  task seed_tweets: :environment do
    User.all.each do |user|
      tweet = Tweet.create do |t|
        t.message = 'I am random tweet, dude! Created at: ' + Time.now.to_s
        t.user_id = user.id
      end
      if tweet.id
        puts "Tweet for user #{user.email} created: '#{tweet.message}'"
      else
        puts "Unfortunately, tweet for user #{user.email} not created."
      end
    end
  end
end