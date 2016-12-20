class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :title
      t.string :season
      t.string :episode

      t.timestamps
    end
  end
end
