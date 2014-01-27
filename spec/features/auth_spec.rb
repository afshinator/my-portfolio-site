require 'spec_helper'

describe "Authentication" do
  subject { page }

  describe "User authentication flow" do
    let(:user) { FactoryGirl.create(:user) }  

    context "from the home page" do
      before { visit root_path }

      it { should have_link "Sign in" }
      it { should have_link "Sign up" }
    end
    
  end
  
end

