class CreateArts < ActiveRecord::Migration
  def change
    create_table :arts do |t|
      t.string :name
      t.text :description
      t.string :origin
      t.date :date_origin
      t.string :image
      t.integer :rating

      t.timestamps null: false
    end
  end
end
