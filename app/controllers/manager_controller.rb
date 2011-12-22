class ManagerController < ApplicationController

	def index
		#render :partial => 'gui/top'
		#render :partial => 'gui/mainmenu'
		#render :partial => 'manager/localmenu'
		render :partial => 'manager/core'
		#render :partial => 'gui/footer'
	end


end
