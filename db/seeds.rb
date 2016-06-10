ActiveRecord::Base.transaction do
  market_description = 'This is the best market ever!!!'
  market_names = ['Ashan', 'ATB', 'Tavria B', 'Billa', 'Novus', 'METRO', 'Arsen', 'Amstor', 'Brusnichka']
  markets = []
  markets.each_with_index do |market|
    adress = "#{index} Levandivska St., Lviv"
    markets << Market.create!(name: market, description: market_description, adress: adress)
  end

  product_description = "Very nice product! They taste I've ever eaten anything!"
  product_names = ['canned goods', 'bread', 'biscuit', 'bun', 'cheese', 'cake',
    'butter', 'cheese', 'chocolade', 'candy', 'cream', 'sour cream', 'cheese', 'eggs', 'flour', 'ham',
    'honey', 'loaf', 'marmalade', 'milk', 'olives', 'pepper', 'pie', 'honey', 'salt', 'sugar',
    'sunflower oil', 'sweets', 'yoghurt'
  ]
  products = []
  product_names.each_with_index do |product|
    manufacturer = "Firma #{index}"
    products << Product.create!(
      name: product, description: product_description, manufacturer: manufacturer
    )
  end
  prosucts.each_with_index do |product|
    Price.create!(product: product, market: markets.sample)
  end
end
