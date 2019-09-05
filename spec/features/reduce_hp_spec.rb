# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP by 10

feature 'Reduce HP' do
  scenario 'Player 1 attacking Player 2 reduces P2 HP by 10' do
    sign_in_and_play
    click_button ("Attack")
    expect(page).to have_content("James HP: 90")
  end
end