class Task < ApplicationRecord
  has_many :taggings
  has_many :tags, through: :taggings

  # 可以用 Post.tagge_with(tagname) 來找到文章
  def self.tagged_with(title)
    Tag.find_by!(title: title).posts
  end

  # 如果要取用 tag_list，可以加上這個 getter
  def tag_list
    tags.map(&:title).join(', ')
  end

  # tag_list 的 setter
  def tag_list=(titles)
    self.tags = titles.split(',').map do |item|
      Tag.where(title: item.strip).first_or_create!
    end
  end
end
