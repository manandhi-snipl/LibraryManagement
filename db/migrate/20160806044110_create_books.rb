class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string  :author_name
      t.integer :edition
      t.decimal :price
      t.decimal :isbn_no

      t.timestamps null: false
    end
  end
end
