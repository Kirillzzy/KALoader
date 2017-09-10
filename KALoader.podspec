Pod::Spec.new do |s|

  s.name         = "KALoader"
  s.version      = "0.0.1"
  s.summary      = "A short description of KALoader."
  s.description  = <<-DESC
  This framework will help you to create beautiful animation placeholders
                   DESC

  s.homepage     = "https://github.com/Kirillzzy/KALoader"
  s.license      = "MIT"
  s.author       = { "Kirill" => "kirillzzy@gmail.com" }
  s.source       = { :git => "https://github.com/Kirillzzy/KALoader.git", :tag => s.version }

  s.source_files  = "KALoader/*.swift"
end
