class Position < ActiveRecord::Base
  attr_accessible :emplacement_id, :nom
  belongs_to :emplacement
end
