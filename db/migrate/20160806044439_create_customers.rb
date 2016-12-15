class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :membership_no
      t.string :place
      t.timestamps null: false
    end
  end
end
