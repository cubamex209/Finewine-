class CreateWines < ActiveRecord::Migration[5.1]
  def change
    create_table :wines do |t|
      t.string :make
      t.integer :year
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
