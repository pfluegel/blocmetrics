class Application < ActiveRecord::Base

  belongs_to :user
  has_many :events, dependent: :destroy
  validates :name, presence: true
  validates :url, presence: true
  validates :user, presence: true

  def name=(name)
    self[:name] = name.downcase
  end
  def name
    self[:name].to_s.capitalize
  end
end
