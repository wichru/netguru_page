# frozen_string_literal: true

class Citation < ApplicationRecord
  validates :text, presence: true, length: { minimum: 5 }
end
