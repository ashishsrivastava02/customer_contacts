class HomepageController < ApplicationController
def index
  @variable_temp = CustomerContact.all
end
def show
  @variable_temp = CustomerContact.all
end
#def new
#  @variable_temp = CustomerContact.new
#end

#def show
#   @variable_temp = CustomerContact.find(params[:Prod_Instance])
#end
end
