Pod::Spec.new do |s|
  s.name     = 'GData'
  s.version  = '1.9.3'
  s.license  = { :type => 'Apache License, Version 2.0', :file => 'COPYING.txt' }
  s.summary  = "The Google data APIs provide a simple protocol for reading and "\
               "writing data on the web. Many Google services provide a Google data API."
  s.homepage = 'https://code.google.com/p/gdata-objectivec-client'
  s.author   = { 'The Google Data APIs team' => 'https://code.google.com/p/gdata-objectivec-client' }
  s.source   = { :git => 'https://github.com/PaulTaykalo/GData.git'}

  s.subspec 'XMLNode' do |gdxml|
    gdxml.source_files = 'Source/XMLSupport/*.{h,m}'
    gdxml.libraries    = 'xml2'
    gdxml.xcconfig     = { 'HEADER_SEARCH_PATHS' => ['"$(SDKROOT)/usr/include/libxml2"','"/usr/include/libxml2"'] }
  end

end
