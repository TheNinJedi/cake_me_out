class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :cake_name
      t.string :type
      t.text :description
      t.date :completed_at
      t.integer :servings

      t.timestamps
    end
  end
end
