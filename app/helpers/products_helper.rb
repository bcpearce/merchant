module ProductsHelper
  def print_price(price)
    number_to_currency price
  end

  def print_stock(stock, requested=1)
    if stock > 0
      if stock < requested
        content_tag(:span, "Insufficient stock (#{stock})", class:'low_stock')
      else
        content_tag(:span, "In Stock (#{stock})", class:"in_stock")
      end
    else
      content_tag(:span, "Out of Stock", class:"out_stock")
    end
  end
end
