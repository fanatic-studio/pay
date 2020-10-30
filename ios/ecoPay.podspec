

Pod::Spec.new do |s|



  s.name         = "ecoPay"
  s.version      = "1.0.0"
  s.summary      = "eco plugin."
  s.description  = <<-DESC
                    eco plugin.
                   DESC

  s.homepage     = "https://eco.io"
  s.license      = "MIT"
  s.author             = { "kjeco" => "kjeco@kjeco.com" }
  s.source =  { :path => '.' }
  s.source_files  = "ecoPay", "**/**/*.{h,m,mm,c}"
  s.exclude_files = "Source/Exclude"
  s.resources = ['ecoPay/Utility/Alipay/AlipaySDK.bundle']
  s.vendored_libraries = ['ecoPay/Utility/WeChat/libWeChatSDK.a']
  s.vendored_frameworks = ['ecoPay/Utility/Alipay/AlipaySDK.framework']
  s.platform     = :ios, "8.0"
  s.requires_arc = true

  s.dependency 'WeexSDK'
  s.dependency 'eco'
  s.dependency 'WeexPluginLoader', '~> 0.0.1.9.1'

end
