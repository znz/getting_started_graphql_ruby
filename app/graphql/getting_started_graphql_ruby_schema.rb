GettingStartedGraphqlRubySchema = GraphQL::Schema.define do
  query(Types::QueryType)
  mutation(Mutations::CreateVideo)
end
