class Tag < ActiveRecord::Base
  attr_accessible :nom
  has_and_belongs_to_many :documents
end
