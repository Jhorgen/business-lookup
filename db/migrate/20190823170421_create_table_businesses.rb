class CreateTableBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :business_catagory
      t.text :text_body
      t.belongs_to :location, foreign_key: true
    end
  end
end
