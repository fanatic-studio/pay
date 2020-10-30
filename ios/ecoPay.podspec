

Pod::Spec.new do |s|



  s.name         = "vdPay"
  s.version      = "1.0.0"
  s.summary      = "vd plugin."
  s.description  = <<-DESC
                    vd plugin.
                   DESC

  s.homepage     = "https://vd.io"
  s.license      = "MIT"
  s.author             = { "kjeco" => "kjeco@kjeco.com" }
  s.source =  { :path => '.' }
  s.source_files  = "vdPay", "**/**/*.{h,m,mm,c}"
  s.exclude_files = "Source/Exclude"
  s.resources = ['vdPay/Utility/Alipay/AlipaySDK.bundle']
  s.vendored_libraries = ['vdPay/Utility/WeChat/libWeChatSDK.a']
  s.vendored_frameworks = ['vdPay/Utility/Alipay/AlipaySDK.framework']
  s.platform     = :ios, "8.0"
  s.requires_arc = true

  s.dependency 'WeexSDK'
  s.dependency 'vd'
  s.dependency 'WeexPluginLoader', '~> 0.0.1.9.1'

end
