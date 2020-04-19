module Types
  class QueryType < Types::BaseObject
    field :tasks, resolver: Resolvers::Tasks
  end
end
