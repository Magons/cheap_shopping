module ProductsHelper
  def price(product)
    prices = product.prices.map { |p| p.price }.sort
    if prices.count == 1
      prices.first.round(2)
    else
      "#{prices.first.round(2)}..#{prices.last.round(2)}"
    end
  end
end
