module ApplicationHelper
  def active?(nav_item)
    @active_nav_item == nav_item
  end
end
