class CreateJokeLists < ActiveRecord::Migration[5.2]
  def change
    create_table :joke_lists do |t|
      t.integer :list_id
      t.string :joke_id

      t.timestamps
    end
  end
end
