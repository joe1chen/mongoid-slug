class WithoutSlug
  include Mongoid::Document

  field :_id, type: Integer
  key :_id # In mongoid2, if you want an integer _id you need to specify it as a key.
end