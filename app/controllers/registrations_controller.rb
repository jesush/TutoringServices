class RegistrationsController < Devise::RegistrationsController
	def update
      @user = User.find(current_user.id)
      email_changed = @user.email != params[:user][:email]
      if !params[:user][:password].nil?
      	password_changed = !params[:user][:password].empty?
      else
      	password_changed = false
      end
      
      successfully_updated = if email_changed or password_changed
        @user.update_with_password(params[:user])
      else
        @user.update_without_password(params[:user])
      end

      if successfully_updated
        # Sign in the user bypassing validation in case his password changed
        sign_in @user, :bypass => true
        redirect_to root_path
      else
        render "edit"
      end
    end
end

