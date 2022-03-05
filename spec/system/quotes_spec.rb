require 'rails_helper'

RSpec.describe 'Quotes', type: :system do
  before do
    driven_by(:rack_test)
  end

  context 'crud' do
    it 'show index page and link to new quote' do
      visit quotes_path
      expect(page).to have_text('Quotes')
      click_link 'New quote'
      expect(page).to have_text('New quote')
    end

    it 'show created quote after created' do
      visit new_quote_path
      expect(page).to have_text('New quote')
      fill_in 'Name', with: 'Test Quote'
      click_button 'Create quote'
      expect(page).to have_text('Test Quote')
    end

    it 'show edit page' do
      quote = create(:quote, :insert)
      visit quotes_path
      expect(page).to have_text('Edit')
      click_link 'Edit', match: :first
      expect(page).to have_text('Edit quote')
      fill_in 'Name', with: 'Test Update'
      click_button 'Update quote'
      expect(page).to have_text('Test Update')
    end
    it 'delete one record' do
      quote = create(:quote, :delete)
      visit quotes_path
      expect(page).to have_text(quote.name)
      click_button 'Delete', match: :first
      expect(page).to have_text('Quote was successfully deleted')
    end
  end
end
