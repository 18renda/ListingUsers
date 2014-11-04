class UsersController < ApplicationController
  def index
  @users = User.all
  if params[:sort]
  @users = User.order(params[:sort])
  end
	@columns = User.column_names.reject {|value| value == "id" }
	@columns = @columns.map{|y| [y,y]}
  end

  def result
    @searched_users = User.where("#{params[:column]} = ?", params[:id])
  end
end
