require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        :title => "Title",
        :description => "MyText",
        :images => "Images",
        :category => nil
      ),
      Item.create!(
        :title => "Title",
        :description => "MyText",
        :images => "Images",
        :category => nil
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Images".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
