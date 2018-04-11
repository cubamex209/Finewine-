class AddTagToWines < ActiveRecord::Migration[5.1]
  def change
    add_column :wines, :tag, :string
  end
end
