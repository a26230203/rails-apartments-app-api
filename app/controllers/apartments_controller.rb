class ApartmentsController < ApplicationController
    def index
        apartment = Apartment.all
        render json: apartment
    end

    def create 
        apartment = Apartment.create(params.permit(:number))
        render josn: apartment
    end

    def show
        apartment = Apartment.find(params[:id])

        if apartment
            render json: apartment
        else 
            render json: {error: "Apartment is not found"}, status: 404 
        end
        
    end

    def update
        apartment = Apartment.find(params[:id])
        apartment.update(params.permit(:number))
        render json: apartment
    end

    def destroy
        apartment = Apartment.find(params[:id])
        apartment.destroy
        render json: apartment
    end
end
