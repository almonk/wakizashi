# http://www.raywenderlich.com/725/how-to-read-and-write-xml-documents-with-gdataxml

$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'motion-redgreen'
require 'motion-cocoapods'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'gdataxmlhtml'
  
  Dir.glob("lib/gdata/**/*.rb").each do |f|
    app.files.unshift(f)
  end

  app.pods do
    dependency 'GDataXML-HTML'
  end
end
