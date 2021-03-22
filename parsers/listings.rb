nokogiri = Nokogiri.HTML(content)
products = nokogiri.css(".product-list.product-list--list-page")
products.each do |pro|

    product = {}
    product['title'] = pro.css(".product-list__product-name").text
    product['url'] = "https://www.vatanbilgisayar.com/"+pro.css(".product-list__link").attr("href")
    product['price'] = nokogiri.css('.product-list__price')
    product['code'] = nokogiri.css('.product-list__product-code')
    rank = nokogiri.css('.rank-star .score').attr("style")
    product['rate'] = rank ? rank.gsub("width: ","") : nil
    product['price'] = nokogiri.css('.comment-count')

    outputs << product
    pages << {
        url: product['url'],
        page_type: 'details',
        vars: { 
            title: product['title'],
            price: product['price']
        }}
        
end
