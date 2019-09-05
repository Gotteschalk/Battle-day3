# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points
feature 'Viewing opponents Hit points' do
  scenario 'When playing I should see my opponents hit points on the game screen' do
    sign_in_and_play
    expect(page).to have_content('Your hit points are 100 out of 100')
  end
end
