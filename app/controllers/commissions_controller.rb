class CommissionsController < ApplicationController
  
  before_action :set_transfer
  
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_transfer
    @transfer = Transfer.find(params[:transfer_id])
  end

end
