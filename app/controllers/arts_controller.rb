class ArtsController < ApplicationController
  def index
     render json: {
       arts: Art.order(:name)
     }
   end

   def create
        if art = Art.create(art_params)
          render json: { art: art }
        else
          render json: {
            message: "Could not create Art",
            errors: art.errors
          }
        end
      end

  def show
      art = Art.find(params[:id])

      if (art.reviews.average(:rating) === nil)
        average_rating = 0
      else
        average_rating = art.reviews.average(:rating).round
      end
      
      render json: {
      art: art
      average_rating: average_rating
    }
  end


      private

      def art_params
        params.require(:art).permit(:name, :description, :origin, :review)
      end



 end
