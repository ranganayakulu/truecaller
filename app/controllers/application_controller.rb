class ApplicationController < ActionController::API
  include Response

  def raise_not_found
    resposne = {}
    resposne[:error] = {}
    resposne[:error][:message] = 'Are you looking for something different!'
    json_error_response(resposne, status: :bad_request)
  end
end
