# frozen_string_literal: true

feature 'Enter names' do
  scenario 'expects player submit name and see on screen' do
    sign_in_and_play
    expect(page).to have_content 'Farnaz vs. Sumeet'
  end
end
