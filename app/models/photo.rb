class Photo < ApplicationRecord
  # Direct associations

  has_many   :likes,
             :class_name => "Vote",
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :image, :presence => true

  validates :owner_id, :presence => true

end
