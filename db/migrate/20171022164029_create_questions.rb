class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer :order
      t.integer :quest_id
      t.string :title
      t.text :description
      t.boolean :active

      t.timestamps
    end
  end
end
