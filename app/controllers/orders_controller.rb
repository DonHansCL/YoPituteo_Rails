class OrdersController < ApplicationController

    before_action :authenticate_user!
    before_action :is_authorised, only: [:show]

    def create
        gig= Gig.find(params[:gig_id])
        pricing = gig.pricings.find_by(pricing_type: params[:pricing_type])

        if (pricing && !gig.has_single_pricing) || (pricing && pricing.basic? && gig.has_single_pricing)
            charge(gig, pricing)
        else
            flash[:alert] = "Precio incorrecto"
        end

        redirect_to request.referrer
    end


    def selling_orders
        @orders = current_user.selling_orders
    end

    def buying_orders
        @orders = current_user.buying_orders
    end

    def complete
        @order = Order.find(params[:id])

        if !@order.completada?
            if @order.completada! # = a order.status = 1
                flash[:notice] = "Guardado..."
            else
                flash[:alert] = "Algo salio mal..."
            end

            redirect_to request.referrer
        end    
    end
    
    def show
        @order = Order.find(params[:id])
        @gig = @order.gig_id ? Gig.find(@order.gig_id) : nil
        @request = @order.request_id ? Request.find(@order.request_id) : nil
        @comments = Comment.where(order_id: params[:id])
    end
    

    private

    def is_authorised
        redirect_to dashboard_path,
        alert: "No tienes los permisos necesarios" unless Order.where("id = ? AND (seller_id = ? OR buyer_id = ?",
                                                                    params[:id], current_user.id, current_user.id)
    end


    def charge(gig, pricing)
        order = gig.orders.new
        order.due_date = Date.today() + pricing.delivery_time.days
        order.title = gig.title
        order.seller_name = gig.user.nombre
        order.seller_id = gig.user.id
        order.buyer_name = current_user.nombre
        order.buyer_id = current_user.id
        order.amount = pricing.price

        if order.save
            flash[:notice] = "Tú orden ha sido creada exitosamente"
        else
            flash[:alert] = order.errors.full_messages.join(', ')
        end

    end
    
end