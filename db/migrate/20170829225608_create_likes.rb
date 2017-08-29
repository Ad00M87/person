class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.string :pokemon
      t.string :band
      t.string :movie_quote
      t.string :lotr_character
      t.string :chuck_fact
      t.belongs_to :athlete, foreign_key: true

      t.timestamps
    end
  end
end
