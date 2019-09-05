feature 'sign in' do
  scenario 'players input names and submit a form' do
    visit('/sign_in')
    fill_in('name_player1', with: 'Boris')
    fill_in('name_player2', with: 'James')
    click_on('Submit')
    expect(page).to have_content('Welcome Boris and James')
  end
end
