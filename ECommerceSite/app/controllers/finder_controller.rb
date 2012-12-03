class FinderController < ApplicationController
  def index
    @rentals = Rental.order('price > 100').limit(4)
    @rentals_new = Rental.order('created_at DESC').limit(4)
  end
  
  def search
  end
  
  def search_result
    @beaver = params[:beaver]
    @rentals = Rental.where("Workertype LIKE ?", "%#{@beaver}%")
  end
  
  def all
    @rentals = Rental.all
  end
end
