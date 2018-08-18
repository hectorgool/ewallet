class WalletsController < ApplicationController
  
  before_action :set_wallet, only: [:show, :update, :destroy]

  #def index
  #end

  def show
    render json: @transfer
  end

  #def new
  #end

  #El customer podrá transferir dinero electrónico de su cuenta a otro numero de wallet.
  def create
    
    if params[:wallet][:destino].present? && params[:wallet][:abono].present?
      @origen = Customer.joins(:wallet).where(:email => 'hectorgool@gmail.com').first

      abono = params[:wallet][:abono].to_f
      saldo_origen = @origen.wallet.saldo
      saldo_origen_menos_comision = restar_comisiones(saldo_origen)

      # se valida que en el origen existan fodos suficientes(mayores a la catidad que se quiere depositar) 
      if saldo_origen_menos_comision > abono

        # se calcula saldo de la cuenta origen depues de restar las comisiones por la transacción
        deposito_origen = restar_comisiones(saldo_origen) - abono
        @origen.wallet.update_attribute(:saldo, deposito_origen)

        @destino = Customer.joins(:wallet).where(:email => params[:wallet][:destino]).first
        # se calcula saldo de la cuenta destion despues de agregar el abono
        deposito_destino = abono + @destino.wallet.saldo
        @destino.wallet.update_attribute(:saldo, deposito_destino)

        comisiones = calcular_comisiones(saldo_origen)
        puts "\nCOMISIONES >>> #{comisiones}\n"

      else
        render :json => '{"error": "fondos insuficientes"}'
      end  

    else
      render :json => '{"error": "empty params"}'
    end

  end

  ##def edit
  #end

  #def update
  #end

  #def destroy
  #end

  private

  def set_wallet
    @wallet = wallet.find(params[:id])
  end

  def transfer_params
    params.require(:transfer).permit(:saldo, :customer_id, :created_at, :updated_at)
  end

  def calcular_comisiones(cantidad = 0.00)
    if (cantidad <= 1000.00)
      (cantidad * 0.003) + 8.00
    elsif (cantidad > 1000.00) && (cantidad <= 5000.00)
      (cantidad * 0.0025) + 6.00
    elsif (cantidad > 5000.00) && (cantidad <= 10000.00)
      (cantidad * 0.002) + 4.00
    else  
      (cantidad * 0.001) + 3.00 
    end
  end

  def sumar_comisiones(cantidad = 0.00)
    cantidad + calcular_comisiones(cantidad)
  end

  def restar_comisiones(cantidad = 0.00)
    cantidad - calcular_comisiones(cantidad)
  end

end
