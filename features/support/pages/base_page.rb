class BasePage
  include PageObject

  page_url BASE_URL

  def should_contain_text(text)
    wait_until(20, "#{text} failed to appear"){
      self.text.include? text
    }
  end
end