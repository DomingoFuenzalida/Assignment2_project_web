class User < ApplicationRecord
    EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    has_many :boards, through: :members

    validates :email, presence:{message: "Ponte un mail"}, uniqueness:{message: "Ya existe ese mail"}, format:{with: EMAIL_REGEX, message: "Escríbete bien ese Email!!"}
    validates :name, presence: {message: "Acaso no tienes nombre?"}
    validates :password, presence: {message: "Crea una contraseña"}, length: { minimum: 6, message: "La contraseña la tienes muy corta ;)"}

end
