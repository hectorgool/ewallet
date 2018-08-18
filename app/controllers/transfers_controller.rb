class TransfersController < ApplicationController
  
  before_action :set_wallet
  
  def index
  end

  def show
  end

  def new
  end

  ##
  def create

    #@destino = Customer.where(:email :'hgo280377@hotmail.com').firstt

    #puts "-----------------------------------#{@destino.attribute_name}"

    # @ticket = @project.tickets.build(ticket_params)
    # if @ticket.save
    #   flash[:notice] = "Ticket has been created."
    #   redirect_to [@project, @ticket]
    # else
    #   flash.now[:alert] = "Ticket has not been created."
    #   render "new"
    # end


  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_wallet
    @wallet = Wallet.find(params[:wallet_id])
  end

  ##
  def ticket_params
    params.require(:ticket).permit(:name, :description)
  end

end
