class ClientsController < ApplicationController

    def index 
        clients = Client.all
        render json: clients
    end

    def show
        client = Client.find_by(id: params[:id])
        if client
          render json: client, status: :created
        else
          render json: { error: "Oops! Client not found" }, status: :not_found
        end
      end
end
