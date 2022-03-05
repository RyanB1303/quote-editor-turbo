require 'rails_helper'

RSpec.describe Quote, type: :model do
  context 'validation' do
    it { should validate_presence_of(:name) }
  end
end
