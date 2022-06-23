class Skill < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :percent_utilised

  after_initialize :set_defaults

  def set_defaults
    badge.self ||= Placeholder.image_generator(height: '250', widht: '250')
  end
end
