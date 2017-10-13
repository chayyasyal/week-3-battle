
feature 'Attack' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    # 10 HP should be deducted from player 2
  end
end
