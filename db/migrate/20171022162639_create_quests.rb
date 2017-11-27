class CreateQuests < ActiveRecord::Migration[5.1]
  def change
    create_table :quests do |t|
      t.string :name
      t.text :description
      t.string :image
      t.boolean :done
      t.boolean :open
      t.integer :user_id

      t.timestamps
    end
  end
end
