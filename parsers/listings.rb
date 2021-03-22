nokogiri = Nokogiri.HTML(content)
products = nokogiri.css(".product-list.product-list--list-page")
products.each do |pro|

    product = {}
    product['title'] = pro.css(".product-list__product-name")
    product['url'] = "https://www.vatanbilgisayar.com/"+pro.css(".product-list__link").attr("href")
    product['price'] = pro.css('.product-list__price')
    product['code'] = pro.css('.product-list__product-code')
    rank = pro.css('.rank-star .score').attr("style")
    product['rate'] = rank ? rank.gsub("width: ","") : nil
    product['price'] = pro.css('.comment-count')

    outputs << product
    pages << {
        url: product['url'],
        page_type: 'details',
        vars: { 
            title: product['title'],
            price: product['price']
        }}

end
