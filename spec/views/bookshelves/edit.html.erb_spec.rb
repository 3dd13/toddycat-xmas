require 'spec_helper'

describe "bookshelves/edit" do
  before(:each) do
    @bookshelf = assign(:bookshelf, stub_model(Bookshelf,
      :name => "MyString"
    ))
  end

  it "renders the edit bookshelf form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bookshelf_path(@bookshelf), "post" do
      assert_select "input#bookshelf_name[name=?]", "bookshelf[name]"
    end
  end
end
