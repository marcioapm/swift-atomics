Pod::Spec.new do |spec|
  spec.name             = 'SwiftAtomics'
  spec.version          = '1.0.2'
  spec.summary          = 'An atomics library for Swift'
  spec.description	= 'This package implements an atomics library for Swift, providing atomic operations for a variety of Swift types, including integers and pointer values. The goal is to enable intrepid developers to start building synchronization constructs directly in Swift.'

  spec.homepage         = 'https://github.com/apple/swift-atomics'
  spec.swift_versions   = '5'
  spec.license          = { :type => 'Apache 2.0', :file => 'LICENSE.txt' }
  spec.authors           = { 'Apple' => 'apple@apple.com', 'Márcio Martins' => 'marcioapm@gmail.com' }
  spec.source           = { :git => 'https://github.com/marcioapm/swift-atomics.git', :tag => spec.version.to_s }

  spec.ios.deployment_target = '10.0'
  spec.tvos.deployment_target = '10.0'
  spec.osx.deployment_target = '10.10'
  spec.watchos.deployment_target = '3.0'
  
  spec.source_files = 'Sources/Atomics/**/*.swift'
  spec.module_name = 'Atomics'

  spec.dependency 'SwiftAtomicsShims', '= ' + spec.version.to_s
end
