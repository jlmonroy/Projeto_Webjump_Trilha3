class Checkout
  include Capybara::DSL

  def initialize
    @street0 = 'Rua Jaime Taveira, 91'
    @street1 = 'Apto 23B'
    @street2 = 'Chacara Cruzeiro do Sul'
    @city = 'São Paulo'
    @postcode = '03732-060'
    @telephone = '(11) 976160727'
    @checkout= 'flatrate_flatrate'
  end

  def shipping_adress_acount
    find(:xpath, "//input[@name='street[0]']").set(@street0)
    find(:xpath, "//input[@name='street[1]']").set(@street1)
    find(:xpath, "//input[@name='street[2]']").set(@street2)
    find(:xpath, "//input[@name='city']").set(@city)
    find(:xpath, "//input[@name='postcode']").set(@postcode)
    select "Brazil", :from => "country_id"
    select "São Paulo", :from => "region_id"
    find(:xpath, "//input[@name='telephone']").set(@telephone)
  end

  def cart
    page.has_no_selector?(:xpath, "//div[@class='loading-mask']")
    find(:xpath, "//input[@value='#{@checkout}']").click
    click_button "Next"
  end

end