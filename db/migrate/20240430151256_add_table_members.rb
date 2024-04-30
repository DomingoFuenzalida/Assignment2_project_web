class AddTableMembers < ActiveRecord::Migration[7.1]
  def change
    create_table :members do |t|
      t.belongs_to :user
      t.belongs_to :board
      t.timestamps
    end
  end
end
