# frozen_string_literal: true

require "combustion"
begin
  Combustion.initialize! :action_controller do
    config.log_level = :fatal if ENV["LOG"].to_s.empty?
    config.i18n.available_locales = %i[ru en]
    config.i18n.default_locale = :ru
  end

$LOAD_PATH << '../lib'

rescue => e
  # Fail fast if application couldn't be loaded
  warn "💥 Failed to load the app: #{e.message}\n#{e.backtrace.join("\n")}"
  exit(1)
end