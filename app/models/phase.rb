class Phase < ApplicationRecord
  extend FriendlyId
  friendly_id :permalink, use: :slugged

  before_save { |phase| phase.permalink = permalink.downcase }
  mount_uploader :phasepic, PhasepicUploader

  has_many :merchandises 
  belongs_to :user
  has_many :agreements
  has_many :groups, through: :agreements
  
  validates :user_id, presence: true
  validates :name, presence: true
  validates :permalink, presence: true, format: { with: /\A[\w+]+\z/ }, length: { maximum: 40 },
                uniqueness: { case_sensitive: false }

  before_save { |phase| phase.permalink = permalink.downcase }

end
