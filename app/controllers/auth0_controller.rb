# ./app/controllers/auth0_controller.rb
class Auth0Controller < ApplicationController
    def callback
      auth_info = request.env['omniauth.auth']
      session[:userinfo] = auth_info['extra']['raw_info']
  
      @user = User.find_or_create_by(auth0_sub: auth0_sub) 
      session[:user_id] = @user 

      # Redirect to the URL you want after successful auth
      redirect_to root_path
    end
  
    def failure
      # Handles failed authentication -- Show a failure page (you can also handle with a redirect)
      @error_msg = request.params['message']
    end
  
    def logout
        # Clear the session data
        session[:userinfo] = nil
        session[:user_id] = nil  # Clear the user_id from the session
        
        url = URI::HTTPS.build(
            host: ENV['AUTH0_DOMAIN'],
            path: '/v2/logout',
            query: {
                returnTo: root_url,
                client_id: ENV['AUTH0_CLIENT_ID']
            }.to_query
        ).to_s
        flash[:notice] = "Vous êtes déconnété(e)"
        redirect_to url, allow_other_host: true, status: :see_other
    end
  end