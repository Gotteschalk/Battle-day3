feature 'sign in' do
  scenario 'players input names and submit a form' do
    input_names
    expect(page).to have_content('Welcome Boris and James')
  end
end
