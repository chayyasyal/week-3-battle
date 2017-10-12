require './app'

feature "Player 1 wants to view Player 2's hit points" do
  scenario 'View-hit-points' do
    visit '/view-hit-points'

    # view_hit_points = player_2_hit_points
    expect(page).to have_content 'Player 2: 100'
  end
end
