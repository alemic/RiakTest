class CrawlsController < ApplicationController

  def index
    client = Riak::Client.new :solr => "/solr"
    if user_signed_in?
      @jobTemplates = client.search('job_templates', "user:" + current_user.id.to_s)["response"]["docs"]
    end
  end

  def new

  end

  def show

  end

  def update

  end

  def destroy

  end

end
