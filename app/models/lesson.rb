class Lesson < ApplicationRecord
  belongs_to :matiere
  validates :title, :content, presence: true
  
  end
