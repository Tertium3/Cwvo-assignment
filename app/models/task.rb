class Task < ApplicationRecord
    has_many :sub_tasks, dependent: :destroy
    validates :text, :summary, presence: true
    validates :important, inclusion: { in: %w(urgent high low normal) },allow_nil: true, allow_blank: true

    def self.search(term)
      if term
        where('summary LIKE ? OR text LIKE ? OR due_date LIKE ? OR important LIKE ?', "%#{term}%", "%#{term}%", "%#{term}%", "%#{term}%")
      else
        all
      end
    end

end
