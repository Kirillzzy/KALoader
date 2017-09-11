Pod::Spec.new do |s|

  s.name         = "KALoader"
  s.version      = "0.3"
  s.summary      = "Create beautiful animated placeholders"
  s.description  = <<-DESC
  This framework will help you to create beautiful animated placeholders
                   DESC

  s.homepage     = "https://github.com/Kirillzzy/KALoader"
  s.license      = "MIT"
  s.author       = { "Kirill" => "kirillzzy@gmail.com" }
  s.source       = { :git => "https://github.com/Kirillzzy/KALoader.git", :tag => s.version }
  s.ios.deployment_target = '8.0'
  s.source_files  = "KALoader/*.swift"
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3' }
end
