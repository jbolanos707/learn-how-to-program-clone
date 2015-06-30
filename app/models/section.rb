class Section < ActiveRecord::Base
  has_many :lessons
  validates :title, :presence => true

  scope(:section1, -> do
    where({section_number: 1})
  end)
  scope(:section2, -> do
    where({section_number: 2})
  end)
end
