class SubTask < ApplicationRecord
  belongs_to :task
  validates :text, :summary, presence: true
end
