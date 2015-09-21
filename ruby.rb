require 'mini_portile'

class RubyRecipe < MiniPortile

  private

  def configure_defaults
    [
      '--enable-load-relative',
      '--disable-install-doc',
      'debugflags="-g"'
    ]
  end

  def configure_prefix
    "--prefix=/app/vendor/ruby-#{version}"
  end
end

recipe = RubyRecipe.new("ruby", "2.2.3")
recipe.files << {
  url: 'http://cache.ruby-lang.org/pub/ruby/2.2/ruby-2.2.3.tar.gz',
  sha256: 'df795f2f99860745a416092a4004b016ccf77e8b82dec956b120f18bdc71edce'
}
recipe.cook
