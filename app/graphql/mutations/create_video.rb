Mutations::CreateVideo = GraphQL::Relay::Mutation.define do
  name "CreateVideo"

  return_field :video, Types::VideoType

  input_field :title, !types.String

  resolve ->(obj, args, ctx) {
    return Video.create(title: args["title"])
  }
end
