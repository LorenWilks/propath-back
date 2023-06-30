# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  def create
    self.resource = warden.authenticate!(auth_options)
    sign_in(resource_name, resource)
    respond_with resource, location: after_sign_in_path_for(resource)
  end
end
