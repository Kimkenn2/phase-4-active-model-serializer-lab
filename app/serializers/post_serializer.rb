class PostSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :post_tags
  has_many :post_tags
  belongs_to :author

  def short_content
    "#{object.content[0..39]}..."
  end
end
