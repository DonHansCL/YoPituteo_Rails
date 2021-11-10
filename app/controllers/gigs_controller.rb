class GigsController < ApplicationController
  
  protect_from_forgery except: [:upload_photo]
  before_action :authenticate_user!, except: [:show]
  before_action :set_gig, except: [:new, :create]
  before_action :is_authorised, only: [:edit, :update, :upload_photo, :delete_photo]
  before_action :set_step, only: [:update, :edit]
  
  def new
    @gig = current_user.gigs.build
    @categories = Category.all   
    @provinces = Province.all
  end

  def create
    @gig = current_user.gigs.build(gig_params)

    if @gig.save
      @gig.pricings.create(Pricing.pricing_types.values.map{ |x| {pricing_type: x} })
      redirect_to edit_gig_path(@gig), notice: "Guardado..."
    else
      redirect_to request.referrer, flash: { error: @gig.errors.full_messages }
    end  
  end


  def edit
    @categories = Category.all    
    @provinces = Province.all
  end


  def update

    if @step == 2
      gig_params[:pricings_attributes].each do |index, pricing|
          if @gig.has_single_pricing && pricing[:pricing_type] != Pricing.pricing_types.key(0)
            next;
          else
            if pricing[:title].blank? || pricing[:description].blank? || pricing[:delivery_time].blank? || pricing[:price].blank?
              return redirect_to request.referrer, flash: {error: "Precio invalido"}
            end
          end
      end
    end

    if @step ==3 && gig_params[:description].blank?
      return redirect_to request.referrer, flash: {error: "Descripción o puede estar en blanco"}
    end

    if @step ==4 && @gig.photos.blank?
      return redirect_to request.referrer, flash: {error: "No tienes ninguna foto"}
    end


    if @step ==5
      @gig.pricings.each do |pricing|
        if @gig.has_single_pricing && !pricing.basic?
          next;
        else
          if pricing[:title].blank? || pricing[:description].blank? || pricing[:delivery_time].blank? || pricing[:price].blank?
            return redirect_to edit_gig_path(@gig, step: 2), flash: {error: "Precio invalido"}
          end
        end        
    end

    if @gig.description.blank?
        return redirect_to edit_gig_path(@gig, step: 3), flash: {error: "Descripción o puede estar en blanco"}
      elsif @gig.photos.blank?
        return redirect_to edit_gig_path(@gig, step: 4), flash: {error: "No tienes ninguna foto"}
      end
    end

    if @gig.update(gig_params)
      flash[:notice] = "Guardado..."
    else
      return redirect_to request.referrer, flash: {error: @gig.errors.full_messages}
    end


    if @step < 5
      redirect_to edit_gig_path(@gig, step: @step + 1)
    else
      redirect_to dashboard_path
    end

  end



  def show
    @categories = Category.all  
    @provinces = Province.all
  end


  def upload_photo
    @gig.photos.attach(params[:file])
    render json: { success:true }
  end

  def delete_photo
    @image = ActiveStorage::Attachment.find(params[:photo_id])
    @image.purge
    redirect_to edit_gig_path(@gig, step: 4)
  end







  def search
    @gig = current_user.gigs.build(gig_params)
    @categories = Category.all
    @category = Category.find(params[:category]) if params[:category].present?
    @provinces = Province.all   
   # @province = Province.find(params[:province]) if params[:province].present?

   #  @gigs = Gig.where("active = ? AND gigs.title ILIKE ? AND category_id = ?", true, "%#{params[:q]}%", params[:category])

   @q= params[:q]
   @min = params[:min]
   @max = params[:max]
   @delivery = params[:delivery].present? ? params[:delivery] : "0"
   @sort = params[:sort].present? ? params[:sort] : "price asc"

   query_condition = []
   query_condition[0] = "gigs.active = true"
   query_condition[0] += " AND ((gigs.has_single_pricing = true AND pricings.pricing_type = 0) OR (gigs.has_single_pricing = false))"

      if !@q.blank?
        query_condition[0] += " AND gigs.title ILIKE ?"
        query_condition.push "%#{@q}%"
      end

      if !params[:category].blank?
        query_condition[0] += " AND category_id = ?"
        query_condition.push params[:category]
      end

      if !params[:province].blank?
        query_condition[0] += " AND province_id = ?"
        query_condition.push params[:province]
      end

      if !params[:min].blank?
        query_condition[0] += " AND pricings.price >= ?"
        query_condition.push @min
      end

      if !params[:max].blank?
        query_condition[0] += " AND pricings.price <= ?"
        query_condition.push @max
      end

      if !params[:delivery].blank? && params[:delivery] != "0"
        query_condition[0] += " AND pricings.delivery_time <= ?"
        query_condition.push @delivery
      end

      @gigs = Gig.select("gigs.id, gigs.title, gigs.user_id, MIN(pricings.price) AS price").joins(:pricings).where(query_condition)
                  .group("gigs.id")
                  .order(@sort)
                  .page(params[:page]).per(12)
  end
  















  private

  def set_step
    @step = params[:step].to_i > 0 ? params[:step].to_i : 1
    if @step > 5
      @step = 5
    end
  end

  def set_gig
    @gig = Gig.find(params[:id])
  end

  def is_authorised
    redirect_to root_path, alert: "No tienes los permisos para acceder" unless current_user.id == @gig.user_id      
  end

  def gig_params
    params.require(:gig).permit(:title, :video, :description, :active, :category_id, :province_id, :has_single_pricing, 
                        pricings_attributes: [:id, :title, :description, :delivery_time, :price, :pricing_type])    
            
  end  

 
  

end
