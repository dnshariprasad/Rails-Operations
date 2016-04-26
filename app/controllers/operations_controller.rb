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
	end	#respond_to

end #operations

# POST /sum.json
def sum
	first_num = params[:first_num].to_i
	second_num = params[:second_num].to_i
	
	sum = first_num + second_num
	
	respond_to do |format|
		format.json { render json: {sum: "#{sum}"}}
	end	#respond_to

end #sum

# POST /operations_with_operand.json
def operations_with_operand
	first_num = params[:first_num].to_i
	second_num = params[:second_num].to_i
	operand = params[:operand]
	
	case operand
	when "+"
		sum = first_num + second_num
		respond_to do |format|
			format.json { render json: {sum: "#{sum}"}}
			end #respond_to

		when "-"
			sub = first_num - second_num
			respond_to do |format|
				format.json { render json: {sub: "#{sum}"}}
			end #respond_to

		when "*"
			mul = first_num * second_num
			respond_to do |format|
				format.json { render json: {mul: "#{mul}"}}
			end #respond_to

		else 
			respond_to do |format|
				format.json { render json: {error: "operation not found."}}
				end #respond_to
end #case
end #operations_with_operand
end #Controler
