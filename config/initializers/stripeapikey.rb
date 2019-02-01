if Rails.env.development? || Rails.env.test?
  Stripe.api_key = STRIPE_SECRET_KEY
  STRIPECONNECTCLIENTID = STRIPE_CONNECT_CLIENT_ID
else
  Stripe.api_key = ENV['STRIPE_SECRET_KEY']
  STRIPECONNECTCLIENTID = ENV['STRIPE_CONNECT_CLIENT_ID'] 
end