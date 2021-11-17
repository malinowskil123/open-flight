class ApplicationController < ActionController::API
  def success!(payload = {}, code = nil)
    code ||= :ok

    render json: { success: true, payload: payload }, status: code
  end

  def fail!(errors, code = nil)
    errors = [errors] if errors.is_a String

    code ||= :unprocessable_entity


    puts 'hit error method'
    render json: { success: false, errors: errors }, status: code
  end
end
