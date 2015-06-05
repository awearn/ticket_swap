class Ticket < ActiveRecord::Base
  validates :event_id, :presence => true
  validates :price, :presence => true

  belongs_to :event
end
