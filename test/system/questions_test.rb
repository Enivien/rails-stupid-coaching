require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end
  test "reply /submit renders the answer page" do
    visit ask_url
    fill_in('question', with: 'Are you stupid?')
    take_screenshot
    click_on('Ask')
    assert_selector "h3", text: "Silly question, get dressed and go to work!"
    take_screenshot
  end
end
