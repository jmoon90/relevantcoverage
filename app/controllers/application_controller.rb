class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_user!
    unless user_signed_in?
      redirect_to new_user_registration_path
      flash[:notice] = authenticate_message[self.class.to_s]
    end
  end

  def authenticate_message
    {"SourcesController" => "You need to sign in before you can submit a new source",
     "TopicsController" => "You need to sign in before you can submit a new topic",
     "SubscriptionsController" => "You need to sign up in order to subscribe to a topic"
    }
  end
end
