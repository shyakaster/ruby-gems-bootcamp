class Course < ApplicationRecord
  validates :title, :short_description,:language,:level, presence: true
  validates :description, presence: true, length: {minimum: 5}
  belongs_to :user

  def to_s
    title
  end
  has_rich_text :description

  extend FriendlyId
  friendly_id :title, use: :slugged
  # friendly_id :generated_slug, use: :slugged
  # def generated_slug
  #   require 'securerandom'
  #   @random_slug ||= persisted? ? friendly_id : SecureRandom.hex(4)
  # end
  #
  # def to_s
  #   slug
  # end
  LANGUAGE=['Russian','Polish','English','Spanish']

  def self.language
    LANGUAGE.map{ |language| [language,language]}
  end
  LEVEL=['Beginner','Intermediate','Advanced']

  def self.level
    LEVEL.map{ |levels| [levels,levels]}
  end

  include PublicActivity::Model
  tracked owner: Proc.new{ |controller , model| controller.current_user}
  
end
