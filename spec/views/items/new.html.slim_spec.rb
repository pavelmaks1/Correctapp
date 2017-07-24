require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    assign(:item, Item.new(
      :title => "MyString",
      :description => "MyText",
      :images => "MyString",
      :category => nil
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input#item_title[name=?]", "item[title]"

      assert_select "textarea#item_description[name=?]", "item[description]"

      assert_select "input#item_images[name=?]", "item[images]"

      assert_select "input#item_category_id[name=?]", "item[category_id]"
    end
  end
end
