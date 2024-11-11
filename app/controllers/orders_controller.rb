class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def show
   @order = Order.find(params[:id])
  end

  # POST /orders or /orders.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: "Order was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

    # Only allow a list of trusted parameters through.
    def order_params
      params.expect(order: [ :firstname, :lastname, :email, :phone, :quantity, :packettery_branch_id ])
    end
end
