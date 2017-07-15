class OauthConstraint
  def matches?(request)
    request.env["omniauth.auth"].present?
  end
end
