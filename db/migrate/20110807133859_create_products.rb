class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :size
      t.decimal :price
      t.string :color
      t.string :category
      t.string :image

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
