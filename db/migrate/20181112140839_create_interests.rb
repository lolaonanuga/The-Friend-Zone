class CreateInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :interests do |t|
      t.string :name
      t.integer :category_id

      t.timestamps
    end
  end
end
