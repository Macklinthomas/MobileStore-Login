# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

def shared_pods
    pod 'Firebase/Analytics'
    pod 'Firebase/Auth',
    #pod 'FirebaseAuth', '6.4.1'
    pod 'Firebase/Core'
    pod 'Firebase/Messaging'
    pod 'Firebase/Firestore'
    pod 'Firebase/Storage'
    pod 'IQKeyboardManagerSwift'
    pod 'Kingfisher', '~> 4.0'
    pod 'CodableFirebase'
end

target 'MobileLoginAdmin' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for MobileLoginAdmin
    shared_pods
    pod 'Stripe'
    pod 'Alamofire'

end

target 'MobileStore' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for MobileStore
    shared_pods
    pod 'CropViewController'

end
