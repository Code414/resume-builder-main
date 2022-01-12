before_filter :authenticate_user!, except: [:provider, :provider_update]
...
def provider
  @feedback = Feedback.find_by token: params[:token]
end
