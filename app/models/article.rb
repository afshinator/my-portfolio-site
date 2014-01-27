class Article < ActiveRecord::Base
    extend FriendlyId
    friendly_id :title, :use => :slugged
    validates_presence_of :title, :slug, :body  
  
    has_many :comments
    has_many :taggings
    has_many :tags, through: :taggings
    
    validates :title, presence: true, length: { maximum: 50 } # todo, 50 is too much ?
    validates :body, presence: true
    validates :blurb, presence: true
    # validates :image_url, :format => URI::regexp(%w(http https))    
  
    def tag_list
        tags.join(", ")
    end
    
    def tag_list=(tags_string)
        tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
        new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
        self.tags = new_or_found_tags
    end
end
