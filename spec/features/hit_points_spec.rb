require './app'

feature 'Hit points' do
  scenario 'view Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Chayya: 100HP'
  end

  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Olivia attacks Chayya'
  end
end
