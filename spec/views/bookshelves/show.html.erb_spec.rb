require 'spec_helper'

describe "bookshelves/show" do
  before(:each) do
    @bookshelf = assign(:bookshelf, stub_model(Bookshelf,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
