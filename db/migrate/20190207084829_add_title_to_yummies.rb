class AddTitleToYummies < ActiveRecord::Migration[5.2]
  def change
    add_column :yummies, :title, :string
  end
end
