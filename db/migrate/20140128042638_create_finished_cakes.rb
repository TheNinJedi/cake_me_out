class CreateFinishedCakes < ActiveRecord::Migration
  def change
    create_table :finished_cakes do |t|
      t.string :cake_name
      t.string :cake_type
      t.text :description
      t.datetime :completed_at
      t.integer :servings

      t.timestamps
    end
  end
end