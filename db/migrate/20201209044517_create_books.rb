class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :read_book
      t.text :image
      t.timestamps
    end
  end
end
