require 'spec_helper'

describe "Pages" do

  subject { page }
  let(:my_name) { "Afshin Mokhtari"}
  let(:recent_posts) { "Recent Posts" }
  let(:tumblr) { "My Tumblr Feed" }
  
  
  describe "Home Page" do
    before { visit root_path }

    it "should have site header on front page" do
      subject.source.should have_selector('#header')
    end
    
    it "should have my name in the title" do
      subject.source.should have_title(my_name)       
    end

    it "should have my name as an H1" do
      should have_selector('h1', text: my_name)     
    end

    it "should have a sidebar" do
      subject.source.should have_selector('#sidebar')      
    end    

  end

  describe "About Page" do
    before { visit about_path }
    #
    #
    #
  end  

  describe "Portfolio Page" do
    before { visit portfolio_path }
    #
    #
    #
  end    
  
  
end


