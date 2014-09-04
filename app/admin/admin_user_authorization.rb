class AdminUserAuthorization < ActiveAdmin::AuthorizationAdapter
  def authorized?(action, subject=nil)
    secretario
  end
end
