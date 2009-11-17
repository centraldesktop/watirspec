# encoding: utf-8
require File.dirname(__FILE__) + '/spec_helper'

describe "Hiddens" do

  before :each do
    browser.goto(WatirSpec.files + "/forms_with_input_elements.html")
  end

  describe "#length" do
    it "returns the number of hiddens" do
      browser.hiddens.length.should == 1
    end
  end

  describe "#[]" do
    it "returns the Hidden at the given index" do
      browser.hiddens[0].id.should == "new_user_interests_dolls"
    end
  end

  describe "#each" do
    it "iterates through hiddens correctly" do
      browser.hiddens.each_with_index do |h, index|
        h.name.should == browser.hidden(:index, index).name
        h.id.should == browser.hidden(:index, index).id
        h.value.should == browser.hidden(:index, index).value
      end
    end
  end

end
