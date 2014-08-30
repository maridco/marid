class Link < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :music_types
end
