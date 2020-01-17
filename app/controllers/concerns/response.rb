module Response
  def json_response(obj, status = :ok)
    response = {}
    response[:data] = obj.as_json(except: [:created_at, :updated_at])
    render json: response, status: status
  end

  def json_error_response(obj, status = :unprocessable_entity)
    render json: obj, status: status
  end
end
