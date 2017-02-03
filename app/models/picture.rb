class Picture < ApplicationRecord
  validates :artist, presence: true
  validates :title, length: { in: 3..20 }
  validates :url, presence:true, uniqueness: true
  validates :url, format: { with: /\A[h][t][t][p]/ }
end
