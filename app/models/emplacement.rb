class Emplacement < ActiveRecord::Base
  attr_accessible :nom, :salle_id
  belongs_to :salle
end
