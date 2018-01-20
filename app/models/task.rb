class Task < ApplicationRecord
    has_many :sub_tasks, dependent: :destroy
    validates :text, :summary, presence: true
end
