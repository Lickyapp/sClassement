class CreateSalles < ActiveRecord::Migration
  def change
    create_table :salles do |t|
      t.string :nom

      t.timestamps
    end
  end
end
