class RegistrationsController < Devise::RegistrationsController
	def update
      @user = User.find(current_user.id)

      email_changed = @user.email != params[:user][:email]

      if !params[:user][:password].nil?
      	password_changed = true if !params[:user][:password].empty?
      else
      	password_changed = false
      end
      
      if password_changed
      	successfully_updated = @user.update_with_password(params[:user])
      else
      	successfully_updated = @user.update_without_password(params[:user])
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

