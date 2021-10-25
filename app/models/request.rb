class Request < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_one_attached :attachment_file
  has_many :offers, dependent: :delete_all
  has_many :orders

  validates :title, presence: {message: "Título no puede estar en blanco"}
  validates :description, presence: {message: "Descripción no puede estar en blanco"}
  validates :delivery, numericality: {only_integer: true, message: "Tiempo de entrega debe ser un número"}

end
