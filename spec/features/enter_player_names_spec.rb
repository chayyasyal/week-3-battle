require './app'

feature 'Enter name' do
  scenario 'Filling-in-names' do
    visit('/filling-in-names')

    save_and_open_page
    fill_in :player_1_name, with: 'Olivia'
    fill_in :player_2_name, with: 'Chayya'
    click_button 'Submit'
    expect(page).to have_content 'Olivia v Chayya'
  end
end
