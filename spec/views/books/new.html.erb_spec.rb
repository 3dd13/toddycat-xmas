require 'spec_helper'

describe "books/new" do
  before(:each) do
    assign(:book, stub_model(Book,
      :bookshelf_id => 1,
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new book form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", books_path, "post" do
      assert_select "input#book_bookshelf_id[name=?]", "book[bookshelf_id]"
      assert_select "input#book_title[name=?]", "book[title]"
    end
  end
end
