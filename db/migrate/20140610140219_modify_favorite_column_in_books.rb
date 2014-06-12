class ModifyFavoriteColumnInBooks < ActiveRecord::Migration
  def up
    change_column :books, :favorite, :boolean, default: false
  end

  def down
    change_column :books, :favorite, :boolean
  end
end
