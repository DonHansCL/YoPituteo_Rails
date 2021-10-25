class ReviewsController < ApplicationController

    def create
        order = Order.find(review_params[:order_id])

        if order && current_user.id == order.buyer.id
            if Review.exists?(order_id: review_params[:order_id], buyer_id: current_user.id)
                flash[:alert] = "Ya has hacho una evaluación para este aviso"
            else
                review = Review.new(review_params)
                review.gig = order.gig
                review.buyer = current_user
                review.seller = order.seller

                    if review.save
                        flash[:notice] = "Guardado..."
                    else
                        flash[:alert] = "No se puede crear evaluación"
                    end        
            end
        else
            flash[:alert] = "Orden invalida"
        end
        redirect_to request.referrer
    end
    
    private

    def review_params
        params.require(:review).permit(:stars, :review, :order_id)
    end
    

end
