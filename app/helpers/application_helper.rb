module ApplicationHelper

  #method to display the title specified in each html page or to display the default
  def full_title(page_title = '')
    base_title = "CreateCode"  # Variable assignment
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
