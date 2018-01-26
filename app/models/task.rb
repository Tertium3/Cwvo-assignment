class Task < ApplicationRecord
    has_many :sub_tasks, dependent: :destroy
    validates :text, :summary, presence: true
    validates :important, inclusion: { in: %w(urgent high low normal) },allow_nil: true, allow_blank: true
end
