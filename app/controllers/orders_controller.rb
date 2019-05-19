class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :update, :change_status]

  # def index
  #   @orders = Order.all
  # end

  def show
    @order = Order.includes(:passengers).where(guid: params[:id]).where(status: 'new').first
    sum = 0
    if @order.passengers
      course = Fund.get_dollar_course
      course.gsub! ',', '.'
      @order.passengers.each do |passenger|
        if passenger.age1
        elsif passenger.age2
          sum += course.to_f * 390/2
        else
          sum += course.to_f * 390
        end
      end
    end

    if @order
      render json: {order: @order, passengers: @order.passengers, price: sum.round(0)}
    else
      render json: {}, status: :not_found
    end
  end

  def new
    @order = Order.new
  end

  def edit
  end

  def history
    @orders = Order.where(user_id: current_user.id)
    respond_to do |format|
      format.json {render json: @orders}
    end
  end


  def create
    @order = Order.new(create_params)
    if current_user&.id
      @order.user_id = current_user.id
    end
    respond_to do |format|
      if @order.save
        format.json {render json: @order}
      else
        format.json {render json: @order.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /item_images/1
  # PATCH/PUT /item_images/1.json
  def update
    if current_user&.id
      @order.user_id = current_user.id
    end



    respond_to do |format|
      if @order.status=='new' and  @order.update(create_update_params)
        format.json {render json: @order}
      else
        format.json {render json: @order.errors, status: :unprocessable_entity}
      end
    end
  end

  def change_status
    status = change_status_params[:status]
    respond_to do |format|
      if status != new and @order.update(change_status_params)
        format.json {render json: @order}
      else
        format.json {render json: @order.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /item_images/1
  # DELETE /item_images/1.json
  # def destroy
  #   @order.destroy
  #   respond_to do |format|
  #     format.json {head :no_content}
  #   end
  # end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_order
    @order = Order.find_by_guid(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def create_params
    params.require(:order).permit(:flight_number, :flight_date, :flight_from, :flight_to)
  end

  def create_update_params
    params.require(:order).permit(:status,
                                  :passengers,
                                  :external_key,
                                  :payer_type,
                                  :first_name, :last_name, :middle_name, :email, :phone,
                                  :inn, :kpp, :bic, :ur_name, :account, :corr_account,
                                  passengers_attributes: [:id, :first_name, :last_name, :middle_name, :age1, :age2, :_destroy]
                                  )
  end

  def change_status_params
    params.require(:order).permit(:status)
  end
end


