class Api::V1::DoctersController < Api::V1::BaseController
	def index
		docters = Docter.all
		render json: docters
	end

	def new
		docter = Docter.new
		render json: docter
	end

	def show
		docter = Docter.find(params[:id])
		render json: docter
	end

	def create
		docter = Docter.new(docter_params)
		if docter.save
			render json: docter
		else
			render error: {error: "unable to docter."}
		end
	end

	def update
		docter = Docter.find(params[:id])
		if docter
		docter.update(docter_params)
		render json: {message: "Doctor successfully updated."}
	    else
		render error: {error: "unable to docter."}
	    end
	end

	def destroy
		docter = Docter.find(params[:id])
		if docter
		docter.destroy
		render json: {message: "Docter successfully updated."}
	    else
		render error: {error: "unable to doctor."}
	    end
	end

	private
	def docter_params
		params.require(:docter).permit(:name)
	end

end
