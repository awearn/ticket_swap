class Type < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true

  has_many :events , :class_name => "Event", :foreign_key => "type_id"
end
