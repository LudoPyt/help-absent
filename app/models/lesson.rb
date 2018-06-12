class Lesson < ApplicationRecord
  belongs_to :matiere
  belongs_to :model

  validates :title, :content, presence: true

  end
