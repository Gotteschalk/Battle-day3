
feature 'Testing' do

  scenario 'checks if the home page returns the rigth message' do
    visit('/')
    expect(page).to have_content('Testing infrastructure working?')
  end
end
