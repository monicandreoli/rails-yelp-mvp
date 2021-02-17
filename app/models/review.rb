# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  STARS = [0, 1, 2, 3, 4, 5].freeze
  validates :rating, presence: true, numericality: true, inclusion: { in: STARS }
end
