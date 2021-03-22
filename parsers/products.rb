nokogiri = Nokogiri.HTML(content)



    product = {}

    product['title'] = nokogiri.at_css('.wrapper-opportunity-content .product-list__product-name')
    product['price'] = nokogiri.at_css('.product-list__price')
    product['code'] = nokogiri.at_css('.product-list__product-code')
    rank = nokogiri.at_css('.rank-star .score').attr("style")
    product['rate'] = rank ? rank.gsub("width: ","") : nil
    product['price'] = nokogiri.at_css('.comment-count')

outputs << product