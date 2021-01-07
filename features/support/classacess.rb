class Access
  include Capybara::DSL

  def initialize
    @site = 'https://magento.nublue.co.uk/'
    @count = 'Create an Account'
    @pass = 'Teste@246212'
    @login = 'Sign In'
    @confirm = 'Welcome'
  end  

  def site_access
    visit (@site)
  end

  def login_access
    find('a', :text=>"#{@count}").click
  end

  def access_count
    site_access
    find('a', :text=>"#{@login}").click
  
    find('#email').set $email
    find('#pass').set (@pass)
    click_button (@login)
    assert_text( (@confirm), wait:20)
  end
end