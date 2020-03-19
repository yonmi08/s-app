class Graph < ApplicationRecord
  belongs_to :user
  has_many   :managements, dependent: :destroy
  accepts_nested_attributes_for :managements, allow_destroy: true

  # has_many   :foods, dependent: :destroy
  # accepts_nested_attributes_for :foods, allow_destroy: true

end

