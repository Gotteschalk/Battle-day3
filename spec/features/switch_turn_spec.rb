# As two Players,
# So we can continue our game of Battle,
# We want to switch turns

feature 'switch turns' do
  scenario 'switches turns after an attack' do
    sign_in_and_play
    click_button("Attack")
    click_button("Next Turn")
    expect(page).to have_content("James, it is your turn")
  end
end