class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :nom
      t.integer :emplacement_id

      t.timestamps
    end
  end
end
