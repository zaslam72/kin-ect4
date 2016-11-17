require 'rails_helper'

describe Category, type: :model do

  it "has a name" do
    category = Category.new(name: "Mind Games")
    expect(category.name).to eq "Mind Games"
  end
end
