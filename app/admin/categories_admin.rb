Trestle.resource(:categories) do
  menu do
    item :categories, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :name
    column :active
    column :created_at, align: :center
    actions do |toolbar, instance, admin|
      toolbar.link 'Activar', admin.path(:activate, id: instance.id), method: :post, class: 'btn btn-success'
      toolbar.link 'Desactivar', admin.path(:deactivate, id: instance.id), method: :post, class: 'btn btn-danger'
    end  
   end

   controller do
      def activate
        cat = admin.find_instance(params)
        cat.update(active: true)

        flash[:message] = "Categoria está activa"
        redirect_to admin.path(:show, id: cat)
      end

      def deactivate
        cat = admin.find_instance(params)
        cat.update(active: false)

        flash[:message] = "Categoria está desactivada"
        redirect_to admin.path(:show, id: cat)
      end
    end

    routes do
      post :activate, on: :member
      post :deactivate, on: :member
    end

    form do |category|
      text_field :name
    end
      
    search do |query|
      if query
        Category.where("name ILIKE ?", "%#{query}%")
      else
        Category.all
      end
    end


end
