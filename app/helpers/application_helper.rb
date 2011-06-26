module ApplicationHelper

  
  def title
    base_title = "Unlimited Webshop"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
    def shopbanner
    image_tag("shopbanner.jpg", :alt => "Webshop", :class => "round")
    end
    
   def logo
    image_tag("logo.png", :alt => "Webshop", :class => "round")
  end
end