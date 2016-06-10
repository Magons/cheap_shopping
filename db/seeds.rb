ActiveRecord::Base.transaction do
  market_description = 'This is the best market ever!!!'
  market_names = ['Ashan', 'ATB', 'Tavria B', 'Billa', 'Novus', 'METRO', 'Arsen', 'Amstor', 'Brusnichka']
  markets = []
  market_names.each_with_index do |market, index|
    adress = "#{index} Levandivska St., Lviv"
    markets << Market.create!(name: market, description: market_description, adress: adress)
  end

  product_description = "Very nice product! Straight delicious! Buy it!"
  product_names = ['canned goods', 'bread', 'biscuit', 'bun', 'cheese', 'cake',
    'butter', 'cheese', 'chocolade', 'candy', 'cream', 'sour cream', 'cheese', 'eggs', 'flour', 'ham',
    'honey', 'loaf', 'marmalade', 'milk', 'olives', 'pepper', 'pie', 'honey', 'salt', 'sugar',
    'sunflower oil', 'sweets', 'yoghurt'
  ]
  products = []
  product_names.each_with_index do |product, index|
    manufacturer = "Firma #{index}"
    products << Product.create!(
      name: product, description: product_description, manufacturer: manufacturer
    )
  end
  products.each do |product|
    markets.each do |market|
      Price.create!(product: product, market: market, price: rand(10.1..100.2))
    end
  end
end
