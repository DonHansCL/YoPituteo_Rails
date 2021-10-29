class CommentsController < ApplicationController

    before_action :authenticate_user!
    before_action :is_valid_order


    def create
        order = Order.find(comment_params[:order_id])

        if comment_params[:content].blank?
            #return redirect_to request.referrer, alert: "Mensaje inválido"
            return render json: {success: false}
        end


        if order.buyer_id != current_user.id && order.seller_id != current_user.id
            return render json: {success: false}
        end

        @comment = Comment.new(
            user_id: current_user.id,
            order_id: order.id,
            content: comment_params[:content]
        )

        if @comment.save
           # redirect_to request.referrer, notice: "Comentario enviado"
           CommentChannel.broadcast_to order, message: render_comment(@comment)
         #  return render json: {success: true} esto no funciona
        else
            # redirect_to request.referrer, alert: "Comentario no pudo ser enviado"
           # return render json: {success: false}   ESTO NO FUNCIONA
        end
    end
    

    private

    def render_comment(comment)
        self.render_to_string partial: 'orders/comment', locals: {comment: comment}
      end

    def comment_params
        params.require(:comment).permit(:content, :order_id)
    end

    def is_valid_order
        redirect_to dashboard_path, alert: "Orden inválida" unless Order.find(comment_params[:order_id]).present?
    end
    
    

end