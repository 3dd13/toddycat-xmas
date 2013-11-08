require 'spec_helper'

describe "bookshelves/new" do
  before(:each) do
    assign(:bookshelf, stub_model(Bookshelf,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new bookshelf form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bookshelves_path, "post" do
      assert_select "input#bookshelf_name[name=?]", "bookshelf[name]"
    end
  end
end
