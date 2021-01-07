class Payment
  include Capybara::DSL

  def initialize
    @order = 'Place Order'
    @click = 'action primary checkout'
    @expect = 'Thank you for your purchase'
  end

  def finish_payment
    assert_text((@order), wait:30)
    find(:xpath, "//button[@class='#{@click}']").click
  end

  def confirm
    assert_text((@expect), wait:10)
  end

end