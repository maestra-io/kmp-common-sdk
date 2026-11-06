Pod::Spec.new do |s|
    s.name         = 'MindboxCommon'
    s.version      = '2.14.4'
    s.summary      = 'Maestra KMP Common framework (Local)'
    s.homepage     = 'https://github.com/maestra-io/kmp-common-sdk'
    s.author       = { "Maestra" => "support@maestra.io" }
    
    s.source       = { :git => 'https://github.com/maestra-io/kmp-common-sdk.git', :tag => s.version.to_s }
    
    s.prepare_command = <<-CMD
        chmod +x gradlew
        ./gradlew assembleMindboxCommonReleaseXCFramework
    CMD
    
    s.platform     = :ios, '12.0'
    s.vendored_frameworks = 'mindbox-common/build/XCFrameworks/release/MindboxCommon.xcframework'
  end