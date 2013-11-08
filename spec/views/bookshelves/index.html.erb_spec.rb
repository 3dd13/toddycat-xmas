require 'spec_helper'

describe "bookshelves/index" do
  before(:each) do
    assign(:bookshelves, [
      stub_model(Bookshelf,
        :name => "Name"
      ),
      stub_model(Bookshelf,
        :name => "Name"
      )
    ])
  end

  it "renders a list of bookshelves" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
