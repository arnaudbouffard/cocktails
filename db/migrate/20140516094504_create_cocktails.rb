class CreateCocktails < ActiveRecord::Migration
  def change
    create_table :cocktails do |t|
      t.string :name
      t.string :picture
      t.text :description

      t.timestamps
    end
  end
end
