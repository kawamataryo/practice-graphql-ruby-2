module Types
  class TaskType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :note, String, null: true
    field :completed_at, GraphQL::Types::ISO8601DateTime, null: true
  end
end
