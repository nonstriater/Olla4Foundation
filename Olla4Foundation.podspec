Pod::Spec.new do |s| 
	
	s.name 		= "Olla4Foundation"
	s.version 	= "0.0.1"
	s.author 	= {'nonstriater' => '510495266@qq.com'}
	s.summary 	= "iOS framework"
	s.platform 	= :ios, '6.0'
	s.license	= "MIT"
	s.homepage 	= "http://weibo.com/ranwj"

	s.requires_arc 	= true
	s.frameworks 	= 'AVFoundation','QuartzCore','CoreText','AssetsLibrary'
	s.library 		= 'sqlite3'

	s.source 		= {:git => 'https://github.com/nonstriater/Olla4Foundation.git'}
  	s.source_files = 'Foundation/**/*.{h,m}'

end 