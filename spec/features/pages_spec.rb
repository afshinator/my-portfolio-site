require 'spec_helper'

describe "StaticPages" do

  subject { page }
  let(:home_h1) { "Afshin Mokhtari"}
  let(:recent_posts) { "Recent Posts" }
  let(:tumblr) { "My Tumblr Feed" }
  
  
  describe "Home Page" do
    before { visit root_path }

    it "should have site header on front page" do
      subject.source.should have_selector('#header')
    end
    
    it "should have my name in the title" do
      subject.source.should have_title("Afshin Mokhtari")       
    end
    
  end

end


