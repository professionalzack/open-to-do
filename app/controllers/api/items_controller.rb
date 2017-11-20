class Api::ItemsController < ApiController
    before_action :authenticated?
 
    def create
        items = Item.all
        list = List.find(params[:list_id])
        item = list.items.new(item_params)
        user = User.find(params[:user_id])

        if item.save
            render json: item
        else
            render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private
    def item_params
        params.require(:item).permit(:title)
    end

end