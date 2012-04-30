class Document < ActiveRecord::Base
  attr_accessible :date, :descriptif, :position_id, :url
  belongs_to :position
  has_and_belongs_to_many :tags
end
