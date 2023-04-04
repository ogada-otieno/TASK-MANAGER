class Task < ApplicationRecord
  belongs_to :user
  validates :task_name, :task_description, :user_id, presence: true
  validates :task_status, {
    presence: true,
    inclusion: { 
      in: %w(Complete Incomplete),
      message: "'%{value}' is not valid. Use 'Complete' or 'Incomplete'"
     }
  }
end
