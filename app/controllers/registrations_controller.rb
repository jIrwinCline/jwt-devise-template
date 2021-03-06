class RegistrationsController < Devise::RegistrationsController
    respond_to :json
  
    def create
      build_resource(params["user"].permit(:user, :registration, :password, :password_confirmation, :email))
      resource.save
      render_resource(resource)
    end

    private

    def resource_params
      params.permit(:user, :registration, :password, :password_confirmation)
    end
  end