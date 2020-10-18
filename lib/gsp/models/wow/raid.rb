class Raid
  include Mongoid::Document
  include Mongoid::Timestamps

  field :reset, :type => DateTime
  field :name
  field :slug
  field :present, :type => Array
  field :bench, :type => Array
end
