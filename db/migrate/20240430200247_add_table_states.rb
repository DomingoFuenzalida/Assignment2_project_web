class AddTableStates < ActiveRecord::Migration[7.1]
  def change
    create_table :states do |t|
      t.string :state_name, null: false
      t.belongs_to :board
      t.timestamps
    end
  end
end
