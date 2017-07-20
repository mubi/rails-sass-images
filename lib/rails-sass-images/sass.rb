require 'sass'

dir = Pathname(__FILE__).dirname.join('sass')
Dir.glob(dir.join('*.rb').to_s) { |ext| require ext }

module Sprockets
  module SassFunctions
    include RailsSassImages::Sass
  end
end
