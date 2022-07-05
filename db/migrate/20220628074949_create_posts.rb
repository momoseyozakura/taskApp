class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.text :scedule
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
