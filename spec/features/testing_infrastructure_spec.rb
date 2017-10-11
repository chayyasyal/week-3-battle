require './app'

feature 'Testing infrastructure' do
  scenario 'should run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure works'
  end
end
