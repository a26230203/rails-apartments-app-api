class TenantsController < ApplicationController
    def index
        tenant = Tenant.all
        render json: tenant
    end

    def create
        tenant = Tenant.create(params.permit(:name, :age))
        render json: tenant
    end

    def show
        tenant = Tenant.find(params[:id])
        render json: tenant
    end

    def update
        tenant = Tenant.find(params[:id])
        tenant.update(params.permit(:name, :age))
        render json: tenant
    end

    def destroy
        tenant = Tenant.find(params[:id])
        tenant.destroy
        render json: tenant
    end
end
