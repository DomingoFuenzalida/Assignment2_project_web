class Board < ApplicationRecord
    references :admin, null: false, foreign_key: { to_table: :users }
    has_many :lists
    has_many :users, through: :members



end
