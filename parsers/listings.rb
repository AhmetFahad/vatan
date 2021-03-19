nokogiri = Nokogiri.HTML(content)
products = nokogiri.css(".product-list")
products.each do |product|

    title = product.css(".product-list__product-name").attr("src")
    url = "https://www.vatanbilgisayar.com/"+product.css(".product-list__content a").attr("href").txt
    pages << {
        title: title,
        url: url,
        page_type: 'products'
    }
end

pagination = nokogiri.css("ul.pagination li a")
pagination.each do |pag|
    pages << {
        url: "https://www.vatanbilgisayar.com/"+pag.attr("href"),
        page_type: 'listings'
    }

end    