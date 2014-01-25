module ApplicationHelper
  
  
  def title(value)
    unless value.nil?
      @title = "#{value} | MyPortfolioSite"      
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
  
  
end
