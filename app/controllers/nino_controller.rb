class NinoController < ApplicationController
	def index
		@ninos = Nino.all

		respond_to do |format|
		        format.html
		        format.xls { send_data @ninos.to_xls_data, :filename => 'ninos.xls' }
														
		end
	end
end
