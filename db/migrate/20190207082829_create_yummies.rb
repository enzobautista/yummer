class CreateYummies < ActiveRecord::Migration[5.2]
  def change
    create_table :yummies do |t|
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.datetime :order_cut_off
      t.text :details
      t.integer :min_order
      t.integer :max_order
      t.integer :current_order
      t.decimal :ave_price
      t.decimal :edf_low
      t.decimal :edf_high
      t.text :comments

      t.timestamps
    end
  end
end
