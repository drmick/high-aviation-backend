class SessionsController < Devise::SessionsController
  def create
    self.resource = warden.authenticate!(auth_options)
    set_flash_message!(:notice, :signed_in)
    sign_in(resource_name, resource)
    yield resource if block_given?
    render json: {token: current_token}
    # respond_with resource, location: after_sign_in_path_for(resource)
  end

  def show
    if user_signed_in?
      render json: {user: {id: current_user.id, email: current_user.email}}
    end
  end

  private

  def current_token
    request.env['warden-jwt_auth.token']
  end
end