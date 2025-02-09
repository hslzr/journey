class Entry < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true

  before_save :set_md5_checksum

  enum :status, { draft: "draft", published: "published" }

  def content_for_preview
    content.split("\n").first.gsub(/[#`\*_]/, '').strip
  end

  private

  def set_md5_checksum
    self.md5_checksum = Digest::MD5.hexdigest(content)
  end
end
