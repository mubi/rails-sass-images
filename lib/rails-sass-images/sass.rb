require 'sass'

dir = Pathname(__FILE__).dirname.join('sass')
Dir.glob(dir.join('*.rb').to_s) { |ext| require ext }

module Sass::Script::Functions
  include RailsSassImages::Sass
end

if defined? Sprockets
  module Sprockets
    class SassProcessor
      module Functions
        include RailsSassImages::Sass
      end
    end
  end
end
