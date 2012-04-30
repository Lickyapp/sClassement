class CreateEmplacements < ActiveRecord::Migration
  def change
    create_table :emplacements do |t|
      t.string :nom
      t.integer :salle_id

      t.timestamps
    end
  end
end
