class AddImgUrlToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :image_url, :string
  end
end
