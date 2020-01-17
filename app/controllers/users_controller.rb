class UsersController < ApplicationController
  def index
    # Guard clause
    size = params[:size] || 256
    offset = params[:offset] || 0
    users = User.all
    users =
      users.where(region: params[:region].split(',')) if params[:region].present?
    users = users.where(seed: params[:seed]) if params[:seed].present?
    users = users.limit(size).offset(offset)
    json_response(users, :ok)
  end
end
