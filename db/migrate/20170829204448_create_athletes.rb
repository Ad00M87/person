class CreateAthletes < ActiveRecord::Migration[5.1]
  def change
    create_table :athletes do |t|
      t.string :name, null: false
      t.integer :age
      t.string :sport, null: false
      t.integer :years_participated
      t.string :gender
      t.boolean :alive, default: true

      t.timestamps
    end
  end
end
