SimpleCov.start 'rails' do
  # any custom configs like groups and filters can be here at a central place
  enable_coverage :branch
end if ENV["COVERAGE"]