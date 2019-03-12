class GuestsController < ApplicationController

	before_action :find_guest, only: [:show, :edit, :update, :destroy]

	def index
		@guests = Guest.where(user_id: current_user)
	end

	def show
	end

	def new
		@guest = current_user.guests.build
	end

	def create
		@guest = current_user.guests.build(guest_params)

		if @guest.save
			redirect_to @guest
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @guest.update(guest_params)
			redirect_to @guest
		else
			render 'edit'
		end
	end

	def destroy
		@guest.destroy
		redirect_to guests_path
	end


	private 

		def find_guest
			@guest = Guest.find(params[:id])
		end

		def guest_params
			params.require(:guest).permit(:name, :gender, :note)
		end

end
