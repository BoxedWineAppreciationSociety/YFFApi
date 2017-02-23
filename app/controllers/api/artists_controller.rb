module Api
  class ArtistsController < ApplicationController
    def index
      respond_with Artist.all, root: 'artists'
    end
  end
end
