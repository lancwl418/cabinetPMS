class BookingsController < ApplicationController

	before_action :find_booking, only: [:show, :edit, :update, :destroy]

	def index
		@bookings = Booking.where(user_id: current_user)
		@docs = Doc.where(user_id: current_user)
		@guests = Guest.where(user_id: current_user)
	end

	def show
	end

	def new
		@booking = current_user.bookings.build
		@docs = Doc.where(user_id: current_user)
		@guests = Guest.where(user_id: current_user)
	end

	def create
		@booking = current_user.bookings.build(booking_params)

		if @booking.save
			redirect_to @booking
		else
			render 'new'
		end

	end

	def edit
		@docs = Doc.where(user_id: current_user)
		@guests = Guest.where(user_id: current_user)
	end

	def update

		if @booking.update(booking_params)
			redirect_to @booking
		else
			render 'edit'
		end
	end

	def destroy
		@booking.destroy
		redirect_to booking_path
	end

	private 

	def find_booking
		@booking = Booking.find(params[:id])
	end

	def booking_params
		params.require(:booking).permit(:doc_id, :guest_id, :checkin, :checkout)
	end
end
