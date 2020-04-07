class ClientsController < ApplicationController

    before_action :find_client, only: [:show, :edit, :update, :destroy]

def index
    @clients = Client.all
end


def show
    @client = Client.find(params[:id])
end

def new
    client = Client.new 
end 

def create
    client = Client.find_or_create_by(client_params)
    redirect_to client_path(client)
end 


def edit
end

def update
  @client.update(client_params)
  redirect_to client_path(@client)
end

def destroy
@client.destroy
redirect_to clients_path
end



private
def find_client
  @client = Client.find(params[:id])
end

def client_params
  params.require(:client).permit(:name, :member_since)
end


end
