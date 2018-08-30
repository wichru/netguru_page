require 'spec_helper'

RSpec.describe Citation, :type => :model do
  it "is valid with valid attributes" do
    expect(Citation.new).to be_valid
  end

  it "is not valid without a title"
  it "is not valid without a description"
  it "is not valid without a start_date"
  it "is not valid without a end_date"
end
