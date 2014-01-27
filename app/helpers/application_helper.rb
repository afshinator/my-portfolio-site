require 'rss/2.0'      # for RSS feed
require 'open-uri'     # for RSS feed


module ApplicationHelper
  
  def title(value)
    unless value.nil?
      @title = "#{value}"      
    end
  end
  
  # page-specific id's to be added to body tag of each page
  def page_id
    if id = content_for(:body_id) and id.present?
      return id
    else
      base = controller.class.to_s.gsub("Controller", '').underscore.gsub("/", '_')
      return "#{base}-#{controller.action_name}"
    end
  end  

    
  # My Tumblr feed
  def blog_feed
      url = "http://afshinator.tumblr.com/rss"
      
      html = "<ul>"
      
      open(url) do |rss|
        feed = RSS::Parser.parse(rss)
        # puts "***********> Title: #{feed.channel.title}"
        feed.items.each do |item|
          html << "<li><a href='#{item.link}'>#{item.title}</a></li>"
          # puts "++++++++++++> Item: #{item.title}"
        end
      end     
      
      html << "</ul>"
      html.html_safe
  end    
  
end
