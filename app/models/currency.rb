class Currency < ApplicationRecord
  def current_price
    url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?start=1&limit=5000&convert=USD'
    request = HTTParty.get(url + self.slug)
    response = JSON.parse(request.body)
  end
end
