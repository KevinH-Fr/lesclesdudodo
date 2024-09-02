module UsersHelper

    def current_user
        session[:userinfo]
    end

    def current_user_id
        session[:user_id]['id'] if session[:userinfo].present?
    end

    def is_admin
        user = User.find_by(id: current_user_id)
        user&.admin? || false
    end

end
