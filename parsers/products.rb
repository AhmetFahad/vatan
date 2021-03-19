nokogiri = Nokogiri.HTML(content)
nokogiri = Nokogiri.HTML(content)

product = {}

product['title'] = nokogiri.at_css('.product-list__product-name').txt
product['price'] = nokogiri.at_css('.product-list__price').txt
product['code'] = nokogiri.at_css('.product-list__product-code').txt
rank = nokogiri.at_css('#topAverageRank').attr("style")
product['rate'] = rank ? rank.gsub("width: ","") : nil
product['price'] = nokogiri.at_css('.comment-count').txt

outputs << product