class Api::V1::PatientsController < Api::V1::BaseController

	def index
		patients = Patient.all
		render json: patients
	end

	def new
		patient = Patient.new
		render json: patient
	end

	def show
		patient = Patient.find(params[:id])
		render json: patient
	end

	def create
		patient = Patient.new(patient_params)
		if patient.save
			render json: patient
		else
			render error: {error: "unable to patient."}
		end
	end

	def update
		patient = Patient.find(params[:id])
		if patient
		patient.update(patient_params)
		render json: {message: "patient successfully updated."}
	    else
		render error: {error: "unable to patient."}
	    end
	end

	def destroy
		patient = Docter.find(params[:id])
		if patient
		patient.destroy
		render json: {message: "patient successfully updated."}
	    else
		render error: {error: "unable to patient."}
	    end
	end

	private
	def patient_params
		params.require(:patient).permit(:name, :last_name, :description)
	end
end
