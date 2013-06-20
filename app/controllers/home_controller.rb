class HomeController < ApplicationController
  def index
    #@users = User.all
    client = Riak::Client.new :solr => "/solr"
    if user_signed_in?
      @jobTemplates = client.search('job_templates', "user:" + current_user.id.to_s)["response"]["docs"]
    end
  end
end
