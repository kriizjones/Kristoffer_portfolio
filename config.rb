page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

configure :development do
  activate :livereload
end

require 'extensions/build_cleaner'

configure :build do
  activate :relative_assets
  activate :build_cleaner
end

activate :blog do |blog|
  # set options on blog
end

activate :google_analytics do |ga|
  ga.tracking_id = 'UA-XXXXXXX-X'
end


activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
end
