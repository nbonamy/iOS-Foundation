
Pod::Spec.new do |s|

  s.name         = "Foundation"
  s.version      = "0.1.0"
  s.summary      = "Some classes and categories for iOS projects"
  s.description  = "Some classes and categories for iOS projects"
  s.homepage     = "https://github.com/nbonamy/iOS-Foundation"
  s.license      = "MIT"
  s.author       = { "Nicolas Bonamy" => "nicolas@bonamy.fr" }

  s.platform     = :ios, "6.0"

  s.source       = { :git => "https://github.com/nbonamy/iOS-Foundation" }
  s.source_files = "FoundationMacros.h", "Classes/*.{h,m}"

  s.dependency "ASIHTTPRequest"

end
