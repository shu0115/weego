class Entry < ActiveRecord::Base
  attr_accessible :entry_at, :event_id, :status, :user_id
  
  belongs_to :user
end
