class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable

  def self.new_with_session(params, session)
    user_params = params.except('email', 'username')

    if google_data = session['devise.google_data']
      user_params['email'] = google_data['email']
    end
    new(user_params)
  end

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    login = conditions.delete(:login)
    scope = self.where(conditions)
    scope = scope.where(["username = :value OR email = :value", { :value => login.downcase }]) if login
    return scope.first
  end

  def update_with_password(params, *options)
    params.delete(:current_password)

    if params[:password].blank?
      params.delete(:password)
      params.delete(:password_confirmation) if params[:password_confirmation].blank?
    end

    result = update_attributes(params, *options)

    clean_up_passwords

    return result
  end
end
