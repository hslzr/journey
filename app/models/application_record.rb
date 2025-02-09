class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  before_create :set_id

  private

  def set_id
    loop do
      self.id = SecureRandom.hex(4)
      break unless self.class.exists?(id: id)
    end
  end
end
