require 'dm-core'
require 'dm-migrations'

class Milkpunch
  include DataMapper::Resource
  property :id, Serial
  property :milkpunch, DateTime
  property :boob, String
end

DataMapper.finalize
