class JobTemplate
  include Ripple::Document

  property :user,         Integer,   :presence => true
  property :name,         String,   :presence => true
  property :seedURLs,     String,   :default => "www.google.com"
  property :dateCreated,  Time,     :default => proc { Time.now }

end
