require './app'

feature 'View hit points' do
  scenario 'view Player 2 hit points' do
    visit '/'

    fill_in :player_1_name, with: 'Olivia'
    fill_in :player_2_name, with: 'Chayya'
    click_button 'Submit'
    expect(page).to have_content 'Chayya: 100HP'
  end
end
