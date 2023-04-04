class TaskSerializer < ActiveModel::Serializer
  attributes :id, :task_name, :task_description, :task_status
  belongs_to :user
end
