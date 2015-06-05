class Event < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => { :scope => :address }

  has_many :tickets
  belongs_to :type , :class_name => "Type", :foreign_key => "type_id"
end
