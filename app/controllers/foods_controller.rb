class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end


  def new
    @food = Food.new
  end



  def create 
    @food = Food.new(food_params)
    respond_to do |format|
      if @food.save
        format.html { redirect_to food_url(@food), notice: "Food was successfully created." }
        format.json { render :show, status: :created, location: @food }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end






 private  

def food_params
  params.require(:food).permit(:name, :measurement_unit, :price)
end
end
