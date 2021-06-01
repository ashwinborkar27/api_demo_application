class Api::V1::AppointmentsController < Api::V1::BaseController


	def index
		appointments = Appointment.all
		render json: appointments
	end

	def new
		appointment = Appointment.new
		render json: appointment
	end

	def show
		appointment = Appointment.find(params[:id])
		render json: appointment
	end

	def create
		appointment = Appointment.new(appointment_params)
		if appointment.save
			render json: appointment
		else
			render error: {error: "unable to appointment."}
		end
	end

	def update
		appointment = Appointment.find(params[:id])
		if appointment
		appointment.update(appointment_params)
		render json: {message: "appointment successfully updated."}
	    else
		render error: {error: "unable to appointment."}
	    end
	end

	def destroy
		appointment = Appointment.find(params[:id])
		if appointment
		appointment.destroy
		render json: {message: "appointment successfully updated."}
	    else
		render error: {error: "unable to appointment."}
	    end
	end

	private
	def appointment_params
		params.require(:appointment).permit(:date, :time, :description, :patient_id, :docter_id)
	end
end
