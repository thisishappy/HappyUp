module ApplicationHelper
  # Return a title whether the @instance_variable is set or not.
  def title
    base_title = "Happy&reg; &middot; A new kind of company."
    if @title.nil?
      base_title
    else
      "#{@title} &middot; #{base_title}"
    end
  end
end
