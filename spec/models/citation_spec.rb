require 'rails_helper'

RSpec.describe Citation, type: :model do
  it 'is valid with valid attributes' do
    expect(Citation.new(text: 'anything')).to be_valid
  end

  it 'is not valid without a text' do
    citation = Citation.new(text: nil)
    expect(citation).to_not be_valid
  end
end
