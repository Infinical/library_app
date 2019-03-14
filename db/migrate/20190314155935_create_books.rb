class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :book_name
      t.integer :book_ISBN
      t.string :book_publisher
      t.date :book_year

      t.timestamps
    end
  end
end
