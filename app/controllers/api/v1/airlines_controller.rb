module Api
  module V1
    class AirlinesController < ApplicationController
      def index
        airlines = Airline.all
        
        success!(AirlineBlueprint.render_as_hash(airlines, options))
      end

      def show
        slug = params[:slug]
        
        airline = Airline.find_by(slug: slug)

        if airline 
          success!(AirlineBlueprint.render_as_hash(airline, options))
        else
          fail!(airline.errors, 422)
        end 
      end
      
      def create 
        airline = Airline.new(airline_params)
        
        if airline.save
          success!(AirlineBlueprint.render_as_hash(airline, options))
        else
          fail!(airline.errors.messages, 422)
        end
      end

      def update
        slug = params[:slug]
        airline = Airline.find_by(slug: slug)
        
        if airline.update(airline_params)
          render json: AirlineBlueprint.render_as_hash(airline)
        else
          render json: { error: airline.errors.messages }, status: 422
        end
      end

      def destroy
        slug = params[:slug]

        airline = Airline.find_by(slug: slug)

        if airline.destroy
          head :no_content
        else
          render json: { error: airline.errors.messages }, status: 422
        end
      end

      private 
      def airline_params
        params.require(:airline).permit(:name, :image_url)
      end
      
      def options
        @options ||= { include: %i[reviews] }
      end

    end
  end
end