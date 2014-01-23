describe "StaticPages" do

  subject { page }
  let(:home_h1) { "Afshin Mokhtari"}
  let(:recent_posts) { "Recent Posts" }
  let(:tumblr) { "My Tumblr Feed" }
  
  
  describe "Home Page" do
    before { visit root_path }

    it "should have a title" do
      subject.source.should have_title("Afshin Mokhtari - Software Engineer") 
    end

    it { should have_selector('h1', text: home_h1) }
    it { should_not have_link :href => root_path } 
    it { should have_link "About" }
    # it { should have_link 'Login', :href => login_path(:ref => "homenav") }
    
    describe "Sidebar Widgets" do
      it { should have_selector('h4', text: recent_posts) }
      it { should have_selector('h4', text: tumblr) }
    end
  end
  
end