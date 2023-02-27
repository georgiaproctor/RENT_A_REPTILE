class ReptilesController < ApplicationController
  def index
    @reptiles = Reptile.all
  end
end
