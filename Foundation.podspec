
Pod::Spec.new do |s|

  s.name         = "Foundation"
  s.version      = "0.1.0"
  s.summary      = "Some classes and categories for iOS projects"
  s.description  = "Not intended to be used by external people: stability of this is not guaranteed!"
  s.homepage     = "https://github.com/nbonamy/iOS-Foundation"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Nicolas Bonamy" => "nicolas@bonamy.fr" }

  s.platform     = :ios, "6.0"

  s.source       = { :git => "https://github.com/nbonamy/iOS-Foundation.git", :tag => "master" }
  s.source_files = "FoundationMacros.h", "Classes/*.{h,m}"
  s.requires_arc = true

  s.dependency "ASIHTTPRequest"

end
