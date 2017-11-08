# Rails.configuration.stripe = {
#   :publishable_key => ENV['pk_test_ExkXsQblPwBEaenqdFmmpj6l'],
#   :secret_key      => ENV['sk_test_a9jpiJl2QrB9nB9hG3QgWzEt']
# }

# Stripe.api_key = Rails.configuration.stripe[:secret_key]
Rails.configuration.stripe = {
  publishable_key: Rails.application.secrets.stripe_publishable_key,
  secret_key: Rails.application.secrets.stripe_secret_key
}
Stripe.api_key = Rails.application.secrets.stripe_secret_key
