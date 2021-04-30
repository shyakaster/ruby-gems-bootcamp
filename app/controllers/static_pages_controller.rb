class StaticPagesController < ApplicationController
  def landing_page
    @courses = Course.all.limit(3)
    @recent_courses = Course.all.limit(3).order(created_at: :desc)
  end
  
  def privacy_policy
  end
end
