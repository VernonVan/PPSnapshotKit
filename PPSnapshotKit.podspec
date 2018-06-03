Pod::Spec.new do |s|
  s.name         = "PPSnapshotKit"
  s.version      = "0.0.1"
  s.summary      = "iOS view screenshot, including UIScrollView, UIWebView and WKWebView"
  s.homepage     = "https://github.com/VernonVan/PPSnapshotKit"
  s.license      = "MIT"
  s.author       = { "VernonVan" => "https://www.jianshu.com/u/0da7f56c0a41" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/VernonVan/PPSnapshotKit.git", :tag => "#{s.version}" }

  s.source_files = "PPSnapshotKit/Source/*.{h,m}"
  s.frameworks   = "UIKit", "WebKit"

end
