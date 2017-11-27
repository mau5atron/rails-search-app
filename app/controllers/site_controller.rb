class SiteController < ApplicationController
  def search
  	# @artist = Artist.find_by(name: params[:term])

  	unless params[:term].nil?
	  	@artists = Artist.where("name like ?", "%#{params[:term]}%")
	  	if @artists.empty?
	  		@albums = Album.where("name like ?", "%#{params[:term]}%")
	  	end
   	end
  	# line above protects against SQL attack directly in the form
  	# parameterized query
  end


end
