class Event < ActiveRecord::Base
  attr_accessible :comment, :place, :start_at, :user_id
  
  belongs_to :user
end
