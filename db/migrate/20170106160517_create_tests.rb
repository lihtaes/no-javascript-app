class CreateTests < ActiveRecord::Migration[5.0]
  def change
    create_table :tests do |t|
      t.string :title
      t.string :body
      t.string :nickname

      t.timestamps
    end
  end
end