class Tweet < ActiveRecord::Base
  belongs_to :user
  validates :message, presence: true, length: {in: 3..500}
end
