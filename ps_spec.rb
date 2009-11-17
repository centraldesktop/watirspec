# encoding: utf-8
require File.dirname(__FILE__) + '/spec_helper'

describe "Ps" do

  before :each do
    browser.goto(WatirSpec.files + "/non_control_elements.html")
  end

  describe "#length" do
    it "returns the number of ps" do
      browser.ps.length.should == 5
    end
  end

  describe "#[]" do
    it "returns the p at the given index" do
      browser.ps[0].id.should == "lead"
    end
  end

  describe "#each" do
    it "iterates through ps correctly" do
      browser.ps.each_with_index do |p, index|
        p.name.should == browser.p(:index, index).name
        p.id.should == browser.p(:index, index).id
        p.value.should == browser.p(:index, index).value
      end
    end
  end

end
