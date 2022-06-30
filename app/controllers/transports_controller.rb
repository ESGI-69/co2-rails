class TransportsController < ApplicationController
  before_action :require_login
  def index
    # get all transport order by id
    @transports = Transport.all
    @transports = Transport.order(:id)
  end

  def edit
    @params = params
    @walk = Transport.find(@params[:id_walk])
    @train = Transport.find(@params[:id_train])
    @electrical_car = Transport.find(@params[:id_electrical_car])
    @bus = Transport.find(@params[:id_bus])
    @plane = Transport.find(@params[:id_plane])
    @car = Transport.find(@params[:id_car])

    @walk.multiplier = @params[:walk]
    @train.multiplier = @params[:train]
    @electrical_car.multiplier = @params[:electrical_car]
    @bus.multiplier = @params[:bus]
    @plane.multiplier = @params[:plane]
    @car.multiplier = @params[:car]

    @walk.save
    @train.save
    @electrical_car.save
    @bus.save
    @plane.save
    @car.save

    redirect_to transports_path

  end
end
