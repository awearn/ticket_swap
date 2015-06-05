class Ticket < ActiveRecord::Base
  validates :event_id, :presence => true
  validates :price, :presence => true
  validates :user_id, :presence => true

  belongs_to :event
  belongs_to :user
end
