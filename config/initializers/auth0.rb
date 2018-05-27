Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    'TB8iytgqqPShucfTWg7moMIBs545Egpm',
    'YOUR_CLIENT_SECRET',
    'blakenoll.auth0.com',
    callback_path: "/auth/oauth2/callback",
    authorize_params: {
      scope: 'openid profile',
      audience: 'https://blakenoll.auth0.com/userinfo'
    }
  )
end