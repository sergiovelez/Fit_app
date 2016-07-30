class EquipmentController < ApplicationController

  def index
    @equipment = Equipment.all
  end

  def new
    @equipment = current_user.equipment.build
  end

  # def show
  #   if current_user.something ==
  # end

  def select
    @equipment = Equipment.all
  end

  def assign_equipment
    Equipment.assign_to_user(current_user,equipment_params)
    redirect_to root_path
  end

  def create
    @equipment = Equipment.new
  end

  def equipment_params
    params.require(:equipment)
  end

end
