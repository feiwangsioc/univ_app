class PagesController < ApplicationController
  
  skip_before_action ：require_user
  
  def about 
  end 
  
end 