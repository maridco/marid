class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :comment
  belongs_to :link
end
