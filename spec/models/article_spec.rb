require 'spec_helper'

describe Article do
    
    before { @article = Article.new(title: "Test1 article title",
        blurb: "a short summary",
        body: "Here is a line that should be the body of the article")    }
    
    subject { @article }
        
    it { should respond_to(:title) }
    it { should respond_to(:blurb) }
    it { should respond_to(:image_url) }   
    it { should respond_to(:body) }
    
    it { should be_valid }
    
    describe ": when title is not present" do
        before { @article.title = " " }
        it { should_not be_valid }
    end

    describe ": when blurb is not present" do
        before { @article.blurb = " " }
        it { should_not be_valid }
    end    
    
    describe ": when there is nothing in body" do
        before { @article.body = " " }
        it { should_not be_valid }
    end    

    describe ": when title is too long" do
        before { @article.title = "a" * 51 }
        it { should_not be_valid }
    end 

end
