class BookPolymorphic
  include Mongoid::Document
  include Mongoid::Slug
  field :title

  slug  :title, :history => true, :polymorphic => true
  embeds_many :subjects
  has_many :author_polymorphics
end

class ComicBookPolymorphic < BookPolymorphic
end
