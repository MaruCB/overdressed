class CreateCostumes < ActiveRecord::Migration[7.0]
  def change
    create_table :costumes do |t|
      t.string :name
      t.float :price
      t.text :description
      t.string :size
      t.string :category

      t.timestamps
    end
  end
end
