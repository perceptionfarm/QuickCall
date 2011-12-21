class UploadController < ApplicationController
	
	require 'spreadsheet'
	

	def index

	end	


	def uploadit
		
		Spreadsheet.client_encoding = 'UTF-8'

    	book = Spreadsheet.open Rails.public_path+'/import/importami.xls'
    	sheet1 = book.worksheet 0	
	
		sheet1.each 1 do |row| 
			Customer.new(:name => row[0], 
						:second => row[1],
						:email => row[2],
						:phone1 => row[3],
						:phone2 => row[4],
						:mobile => row[5],
						:facebook => row[6],
						:twitter => row[7],
						:addr1_street => row[8],
						:addr1_city => row[9],
						:addr1_zip => row[10],
						:addr1_province => row[11],
						:addr1_state => row[12],
						:addr1_country => row[13],
						:addr1_def => row[14],
						:addr1_pref => row[15],
						:company_id => session[:user][:company]).save
		end
				
	end

end
