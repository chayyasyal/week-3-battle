require './app'

def sign_in_and_play
  visit('/')

  fill_in :player_1_name, with: 'Olivia'
  fill_in :player_2_name, with: 'Chayya'
  click_button 'Submit'
end
