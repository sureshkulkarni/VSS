class TalukasController < ApplicationController

  hobo_model_controller

  auto_actions :all
  
 def index
		hobo_index Taluka.apply_scopes(:search => [params[:search],:name],
		:order_by => parse_sort_param(:name))
	end

end
