require 'forwardable'

module RepoMixin
  attr_reader :adapter
  extend Forwardable

  def_delegators :@adapter, :find, :all

  def adapter(a)
    @adapter = a
  end

end
