class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: %i[facebook]


         
  validates :nombre, presence: true, length: {maximum: 50}


  def self.from_omniauth(auth)
    user = User.where(email: auth.info.email).first #si el email existe retorna el usuario

    if user
      return user  # si es asi retorna el usuario
    else
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|   #crea un usuario nuevo con los datos de Facebook a estos campos de abajo
      user.email = auth.info.email  
      user.password = Devise.friendly_token[0, 20]   # crea una contraseña al azar, se debe cambiar en editar usuario
      user.nombre = auth.info.name   # assuming the user model has a name
      user.image = auth.info.image # assuming the user model has an image
      
      user.uid = auth.uid
      user.provider = auth.provider
    end
  end
end

end