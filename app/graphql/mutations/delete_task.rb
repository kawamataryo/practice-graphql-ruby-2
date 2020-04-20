# frozen_string_literal: true

module Mutations
  class DeleteTask < GraphQL::Schema::Mutation
    argument(:id, ID, required: true)

    type Types::TaskType

    def resolve(id: nil)
      task = Task.find(id)
      task.destroy!
    end
  end
end
