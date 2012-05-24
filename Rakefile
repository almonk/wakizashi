require "bundler/gem_tasks"
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'motion-redgreen'
require 'motion-cocoapods'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'wakizashi'

  app.files.unshift("lib/wakizashi.rb")
  Dir.glob("lib/wakizashi/**/*.rb").each do |f|
    app.files.unshift(f)
  end

  app.pods do
    dependency 'GDataXML-HTML'
  end
end

desc "Build the gem"
task :gem do
  sh "bundle exec gem build wakizashi.gemspec"
  sh "mkdir -p pkg"
  sh "mv *.gem pkg/"
end