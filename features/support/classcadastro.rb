class Cadastro
  include Capybara::DSL
  include RSpec::Matchers

  def initialize
    @password = 'Teste@246212'
    @button = 'action.submit.primary'
  end  

  def insert_name(arg1, arg2)
    find('#firstname').set(arg1)
    find('#lastname').set(arg2)
  end

  def insert_data
    $email = "#{Time.now.strftime('%b%d')}.#{Time.now.strftime('%H.%M.s%S')}@mailinator.com"
    find('#email_address').set $email
    find('#password').set (@password)
    find('#password-confirmation').set (@password)
    find(".#{@button}").click
  end

  def result
    expect(page).to have_content $email
  end
  
end
