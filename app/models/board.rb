class Board < ApplicationRecord
    belongs_to :user
    has_many :lists
    has_many :users, through: :members

    validates :board_name, presence:{message: "Crea un nombre a la board"}
    validates :admin, presence:{message: "Crea un admin para la board"}

end
