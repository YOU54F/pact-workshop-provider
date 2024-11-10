require 'bundler'

Bundler.setup(:default, :development)

require 'pact/tasks'


task "pact:verify:v1" do
  sh 'bundle exec rake pact:verify:at[./pacts/paymentserviceclient-paymentservice.json]'
end
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new('pact:verify:v2') do |task|
  task.pattern = 'spec/pact/consumers/*_spec.rb'
  task.rspec_opts = ['-t pact']
end
