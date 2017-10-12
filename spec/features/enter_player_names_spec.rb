require './app'

feature 'Enter name' do
  scenario 'sign_in_and_play' do
    sign_in_and_play
    expect(page).to have_content 'Olivia v Chayya'
  end
end
