nokogiri = Nokogiri.HTML(content)
products = nokogiri.css(".product-list.product-list--list-page")


products.each do |product|
    url = 'https://vatanbilgisayar.com/bilgisayar/'+product.at_css('.product-list__link').attr('href')
    
    pages << {
        url: url,
        page_type: 'products',
        fetch_type: 'browser',
        vars: {}
        }
end

pagination_links = nokogiri.css('a.pagination__content')
pagination_links.each do |link|
  url = 'https://vatanbilgisayar.com/bilgisayar/'+link.attr('href')
  pages << {
      url: url,
      page_type: 'listings',
      fetch_type: 'browser',
      vars: {}
    }
end