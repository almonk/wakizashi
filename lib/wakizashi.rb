require "wakizashi/version"
require 'motion-cocoapods'

unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

Motion::Project::App.setup do |app|
  Dir.glob(File.join(File.dirname(__FILE__), 'wakizashi/*.rb')).each do |file|
    app.files.unshift(file)
  end

  app.pods ||= Motion::Project::CocoaPods.new(app)
  app.pods.dependency 'GDataXML-HTML'
end