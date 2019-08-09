# frozen_string_literal: true

feature 'Attack player' do
  scenario 'expect to attack player 2 and see confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Farnaz attacked Sumeet'
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Sumeet: 60HP'
    expect(page).to have_content 'Sumeet: 50HP'
  end

  scenario 'be attacked by Player 2' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    expect(page).to have_content 'Sumeet attacked Farnaz'
  end

  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Farnaz: 60HP'
    expect(page).to have_content 'Farnaz: 50HP'
  end
end
