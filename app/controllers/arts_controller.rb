class ArtsController < ApplicationController
  def index
       arts = Art.order(:name)

       render json: {
         arts: arts.as_json({:include => :reviews})
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

      reviews = art.reviews



      # if (art.reviews.average(:rating) === nil)
      #   average_rating = 0
      # else
      #   average_rating = art.reviews.average(:rating).round
      # end

      render json: {
      art: art,
      reviews: reviews
    }
  end


      private

      def art_params
        params.require(:art).permit(:name, :description, :origin, :review)
      end



 end
