class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.references :klass, index: true, foreign_key: true
      t.references :paragon, index: true, foreign_key: true
      t.integer :points
      t.integer :row
      t.integer :slot

      t.timestamps null: false
    end

    add_reference :paragons, :skill, index: true, foreign_key: true
    add_reference :klasses, :skill, index: true, foreign_key: true
  end
end
