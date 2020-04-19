# frozen_string_literal: true

module Queries
  module Tasks
    extend ActiveSupport::Concern

    included do
      field :tasks, Types::TaskType, null: false
    end

    def tasks
      Task.all
    end
  end
end
