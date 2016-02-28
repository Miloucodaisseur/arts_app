class ArtsController < ApplicationController
  def index
     render json: {
       meta: {
         count: Art.count,
         page: 0
       },
       arts: Art.order(id: :asc)
     }
   end
   def create
        if art = Art.create(art_params)
          render json: { art: art }
        else
          render json: {
            message: "Could not create Art",
            errors: art.errors,
          }, status: :unprocessible_entity
        end
      end

      def update
        art = Art.find(params[:id])

        if art.update(art_params)
          render json: { art: art }
        else
          render json: {
            message: "Could not update Art",
            errors: art.errors,
          }, status: :unprocessible_entity
        end
      end

      def destroy
        art = Art.find(params[:id])

        if art.destroy
          render json: { art: nil }
        else
          render json: {
            message: "Could not destroy Art, please try again",
          }, status: :unprocessible_entity
        end
      end

      private

      def art_params
        params.require(:art).permit(:title, :completed)
      end



 end
