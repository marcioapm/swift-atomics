Pod::Spec.new do |spec|
  spec.name 			= 'SwiftAtomicsShims'
  spec.version          	= '1.0.2'
  spec.summary          	= 'C interop for Swift Atomics'
  spec.description		= 'This is a support package for SwiftAtomics'

  spec.homepage         	= 'https://github.com/apple/swift-atomics'
  spec.swift_versions   	= '5'
  spec.license          	= { :type => 'Apache 2.0', :file => 'LICENSE.txt' }
  spec.authors          	= { 'Apple' => 'apple@apple.com', 'Márcio Martins' => 'marcioapm@gmail.com' }
  spec.source           	= { :git => 'https://github.com/marcioapm/swift-atomics.git', :tag => spec.version.to_s }

  spec.ios.deployment_target 	= '10.0'
  spec.tvos.deployment_target 	= '10.0'
  spec.osx.deployment_target 	= '10.10'
  spec.watchos.deployment_target= '3.0'
  
  spec.source_files 		= 'Sources/_AtomicsShims/**/*.{h,c,swift}'
  spec.module_name 		= '_AtomicsShims'
  spec.pod_target_xcconfig 	= { 'DEFINES_MODULE' => 'YES' }
end
