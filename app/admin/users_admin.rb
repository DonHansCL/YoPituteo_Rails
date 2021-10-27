Trestle.resource(:users) do

  remove_action :destroy

  menu do
    item :users, icon: "fa fa-user"
  end

  table do
    column :nombre
    column :email
    column :telefono
    column :active
    column :created_at, align: :center
    actions do |toolbar, instance, admin|
      toolbar.link 'Activar', admin.path(:activate, id: instance.id), method: :post, class: 'btn btn-success'
      toolbar.link 'Desactivar', admin.path(:deactivate, id: instance.id), method: :post, class: 'btn btn-danger'
    end  
   end

   controller do
      def activate
        user = admin.find_instance(params)
        user.update(active: true)

        flash[:message] = "Usuario está activa"
        redirect_to admin.path(:show, id: user)
      end

      def deactivate
        user = admin.find_instance(params)
        user.update(active: false)

        flash[:message] = "Usuario está desactivado"
        redirect_to admin.path(:show, id: user)
      end
    end

    routes do
      post :activate, on: :member
      post :deactivate, on: :member
    end

    form do |user|
      text_field :nombre
      text_field :email
      text_field :ciudad
      text_field :telefono
      text_field :about
      
    end
      
    search do |query|
      if query
        User.where("email ILIKE ? OR nombre ILIKE ?", "%#{query}%", "%#{query}%")
      else
        User.all
      end
    end
end
