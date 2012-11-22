class FinderController < ApplicationController
  def index
    @rentals = Rental.order('price > 100').limit(4)
    
    @products = Product.all
  end
  
  def search
  end
  
  def search_result
    @beaver = params[:beaver]
    @rentals = Rental.where("Workertype LIKE ?", "%#{@beaver}%")
  end
end
