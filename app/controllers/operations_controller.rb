class OperationsController < ApplicationController

  # POST /operations.json
  def operations
  	first_num = params[:first_num].to_i
  	second_num = params[:second_num].to_i
  	
  	sum = first_num + second_num
  	sub = first_num - second_num
  	mul = first_num * second_num
  	
  	respond_to do |format|
  		format.json { render json: {sum: "#{sum}", sub: "#{sub}", mul: "#{mul}" }}
  	end
  	
  end
end