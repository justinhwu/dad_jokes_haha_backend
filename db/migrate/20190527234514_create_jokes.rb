class CreateJokes < ActiveRecord::Migration[5.2]
  def change
    create_table(:jokes, :id => false) do |t|
      t.string :id
      t.string :joke

      t.timestamps
    end
    execute "ALTER TABLE jokes ADD PRIMARY KEY (id);"
  end
end
