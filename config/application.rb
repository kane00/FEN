require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FEN
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # lib/vision.rb を読み込む
    config.paths.add 'lib', eager_load: true

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.


    # 言語ファイルを階層ごとに設定するための記述
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]

    # アプリケーションが対応している言語のホワイトリスト(ja = 日本語, en = 英語)
    config.i18n.available_locales = %i(ja en)

    # 上記の対応言語以外の言語が指定された場合、エラーとするかの設定
    config.i18n.enforce_available_locales = true

    # デフォルトの言語設定
    # config.i18n.default_locale = :en
    config.i18n.default_locale = :ja

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
	# Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
	# config.time_zone = 'Central Time (US & Canada)'
	# タイムゾーンを東京に設定
	config.time_zone = 'Tokyo'

    # エラーメッセージのズレ修正
    config.action_view.field_error_proc = Proc.new { |html_tag, instance| html_tag }

  end
end

