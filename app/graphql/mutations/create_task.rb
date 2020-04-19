# frozen_string_literal: true

module Mutations
  class CreateTask < GraphQL::Schema::Mutation
    argument(:title, String, required: true)
    argument(:note, String, required: false)

    type Types::TaskType

    def resolve(title: nil, note: nil)
      Task.create!(
        title: title,
        note: note
      )
    end
  end
end
