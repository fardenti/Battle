# frozen_string_literal: true

feature 'Attack player' do
  scenario 'expect to attack player 2 and see confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Farnaz attacked Sumeet'
  end
end
