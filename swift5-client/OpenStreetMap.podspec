Pod::Spec.new do |s|
  s.name = 'OpenStreetMap'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '0.6'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'v0.6' }
  s.authors = 'OpenAPI Generator'
  s.license = 'ISC License'
  s.homepage = 'https://github.com/wtimme/osm-swagger'
  s.summary = 'Auto-generated API client for OpenStreetMap'
  s.source_files = 'OpenStreetMap/Classes/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6.1'
end
