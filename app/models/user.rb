class User < ApplicationRecord
    EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    has_many :boards, through: :members
    has_one :board, foreign_key: :admin_id


end
