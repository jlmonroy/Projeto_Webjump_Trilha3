class Navigation
  include Capybara::DSL
  include RSpec::Matchers
  
  def initialize
    @image = 'product-image-photo'
    @stock = 'IN STOCK'
    @addcart = 'Add to Cart'
    @page = 'You added'
    @counter = 'counter qty'
    @qty = 'Qty'
    @editcart = 'View and Edit Cart'
    @finish = 'action primary checkout'
  end

  def search_product(produto)
    find(:xpath, "//input[@id='search']").set(produto).send_keys :enter 
    first(:xpath, "//img[@class='#{@image}']").click

    assert_text((@stock), wait:10)
    click_button (@addcart)
    expect(page).to have_content (@page)
    find(:xpath, "//span[@class='#{@counter}']").click
    assert_text((@qty), wait:10)
    assert_text((@editcart), wait:10)
    find(:xpath, "//button[@class='#{@finish}']").click
  end

end