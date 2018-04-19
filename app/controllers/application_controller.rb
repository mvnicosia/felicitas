class ApplicationController < ActionController::Base
  before_action :ensure_json_request

  def ensure_json_request
    head :not_acceptable unless request.format == :json
  end
end
