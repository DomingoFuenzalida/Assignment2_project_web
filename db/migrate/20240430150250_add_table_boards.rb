class AddTableBoards < ActiveRecord::Migration[7.1]
  def change
    create_table :boards do |t|
      t.string :board_name, null: false
      t.references :admin, null: false, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
