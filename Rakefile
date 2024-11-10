require 'bundler'

Bundler.setup(:default, :development)

require 'pact/tasks'


task :verify_pact_v1 do
  sh 'bundle exec rake pact:verify:at[../pact-workshop-ruby-consumer/spec/pacts/paymentserviceclient-paymentservice.json]'
end