# DB Migration class
class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :books, :authors
    create_table :books do |t|
      t.string :title
      t.string :isbn
      t.string :year

      t.timestamps
    end
  end
end
