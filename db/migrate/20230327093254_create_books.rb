class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.date :published_date
      t.string :author

      t.timestamps
    end
  end
end
