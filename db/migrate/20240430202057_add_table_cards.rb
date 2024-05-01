class AddTableCards < ActiveRecord::Migration[7.1]
  def change
    create_table :cards do |t|
      t.string :card_name, null: false
      t.belongs_to :state
      t.string :card_description, null: false
      t.references :user_informer, null: false, foreign_key: { to_table: :users }
      t.references :user_assignee, null: false, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
