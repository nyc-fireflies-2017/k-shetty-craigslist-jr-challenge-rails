class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :author, null: false
      t.string :email, null: false
      t.integer :price, null: false
      t.references :category

      t.timestamps
    end
  end
end
