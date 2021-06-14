class LeasesController < ApplicationController
    def index
        lease = Lease.all
        render json: lease
    end

    def create
        lease = Lease.create(params.permit(:apartment_id, :tenant_id, :rent))
        render json: lease
    end

    def destroy
        lease = Lease.find(params[:id])
        lease.destroy
        render json: lease
    end
end
