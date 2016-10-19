platform :ios, '9.0'

target 'SimpleNoteTakingApp' do
  use_frameworks!

  pod 'Realm', git: 'https://github.com/realm/realm-cocoa.git', branch: 'master', submodules: true
  pod 'RealmSwift', git: 'https://github.com/realm/realm-cocoa.git', branch: 'master', submodules: true

  target 'SimpleNoteTakingAppTests' do
    inherit! :search_paths
    pod 'KIF', git: 'https://github.com/kif-framework/KIF.git', branch: 'master'
    pod 'Nimble', :git => 'https://github.com/Quick/Nimble.git', :commit => 'db706fc'
  end
  
  post_install do |installer|
      installer.pods_project.targets.each do |target|
          target.build_configurations.each do |config|
              config.build_settings['SWIFT_VERSION'] = '3.0'
          end
      end
  end

end
