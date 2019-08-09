# frozen_string_literal: true

feature 'Enter hit points' do
  scenario 'expect to see hit points for player 2' do
    sign_in_and_play
    expect(page).to have_content 'Sumeet: 60HP'
  end
end
