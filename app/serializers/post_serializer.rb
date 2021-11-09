class PostSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags, :content
  belongs_to :author

  def short_content
    "#{self.object.content[0..39]}..."
  end
end
