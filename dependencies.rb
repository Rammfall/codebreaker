require 'i18n'

require_relative 'modules/validation'
require_relative 'entities/console'

I18n.load_path << Dir[File.expand_path('config/locales') + '/*.yml']
I18n.default_locale = :en

app = Console.new
app.init
