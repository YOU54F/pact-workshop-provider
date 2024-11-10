# frozen_string_literal: true

require 'sbmt/pact/rspec'
require "payment_service"
require "payment_method_validator"

RSpec.describe 'Verify consumers for PaymentService', :pact do
  http_pact_provider 'PaymentService'
  pact_config.instance_variable_set(:@app, PaymentService.new)
  pact_config.instance_variable_set(:@http_port, 9292)

  pact_config.instance_variable_set(:@pact_dir, File.expand_path('../../../pacts', __dir__))

  provider_state 'a black listed payment method' do
    set_up do
      invalid_payment_method = '9999999999999999'
      PaymentMethodRepository.instance.black_list(invalid_payment_method)
    end
  end
end
