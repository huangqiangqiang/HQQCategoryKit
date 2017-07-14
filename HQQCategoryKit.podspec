Pod::Spec.new do |s|
  s.name             = 'HQQCategoryKit'
  s.version          = '0.1.0'
  s.summary          = 'HQQ Category Kit.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/huangqiangqiang/HQQCategoryKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'huangqiangqiang' => '285086598@163.com' }
  s.source           = { :git => 'https://github.com/huangqiangqiang/HQQCategoryKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'HQQCategoryKit/**/*'
end
