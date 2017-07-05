class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  @postIdActual = 1
end
