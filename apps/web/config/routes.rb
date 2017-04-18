Hanami::Router.new do
  root to: ->(_env) { [200, {}, ["Hello"]] }
end
