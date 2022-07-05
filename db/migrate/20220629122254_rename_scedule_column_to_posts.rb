class RenameSceduleColumnToPosts < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :scedule, :schedule
  end
end
