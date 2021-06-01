class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true

      #config.cache_classes = true
      # config.api_only = true
      # config.load_defaults 6.0

    # config.middleware.use Rack::Cors do
    #   allow do
    #     origins '*'
    #     resource '*',
    #       headers: :any,
    #       expose: ['access-token', 'expiry', 'token-type', 'uid', 'client'],
    #       methods: [:get, :post, :options, :delete, :put]
    #     end
    # end
end
