class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:index]

  

  private

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

end

end
