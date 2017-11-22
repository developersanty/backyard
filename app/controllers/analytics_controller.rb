class AnalyticsController < ApplicationController
  before_action :authenticate_user

  def index
    @analytics_results = { most_triggered: Analytics.most_triggered(current_user) }
    json_response(@analytics_results)
  end
end