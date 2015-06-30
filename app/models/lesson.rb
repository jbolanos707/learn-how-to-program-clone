class Lesson < ActiveRecord::Base
  before_save :set_number
  belongs_to :section

  validates :name, presence: true

  def next
      return Lesson.where("number > #{number}").order("number").first
  end

    #  return Lesson.where("number > ?", self.number).order("number").first another way of writing it with place holder
    #  #{number} is like self.number

  def previous
    return Lesson.where("number < #{number}").order("number DESC").first
  end

  private
  def set_number
    max = Lesson.maximum("number")
    if max
      self.number = max + 1
    else
      self.number = 1
    end
  end
end
