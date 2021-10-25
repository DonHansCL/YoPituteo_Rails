class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_one_attached :avatar
  has_many :gigs
  has_many :requests
  has_many :offers

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: %i[facebook]

  has_many :buying_orders, foreign_key: "buyer_id", class_name: "Order"
  has_many :selling_orders, foreign_key: "seller_id", class_name: "Order"

         
  validates :nombre, presence: true, length: {maximum: 50}


  def self.from_omniauth(auth)
    user = User.where(email: auth.info.email).first #si el email existe retorna el usuario

    if user
      if !user.provider
        user.update(uid: auth.uid, provider: auth.provider, image: auth.info.image)
      return user  # si es asi retorna el usuario
    else
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|   #crea un usuario nuevo con los datos de Facebook a estos campos de abajo
      user.email = auth.info.email  
      user.password = Devise.friendly_token[0, 20]   # crea una contraseña al azar, se debe cambiar en editar usuario
      user.nombre = auth.info.name   # assuming the user model has a name
      user.image = auth.info.image # assuming the user model has an image
      user.ciudad = auth.info.from
      user.uid = auth.uid
      user.provider = auth.provider
    end
  end
  end
end

end
