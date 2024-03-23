class CreateBookmarks < ActiveRecord::Migration[7.1]
  def change
    create_table :bookmarks do |t|
      t.timestamps
      t.text :comment
      t.references :movie, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true
    end
  end
end
