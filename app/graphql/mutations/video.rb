Mutations::Video = GraphQL::ObjectType.define do
  name "mutation"

  field :video, Types::VideoType do
    description "Create a video"
    argument :title, !types.String

    resolve ->(obj, args, ctx) {
      Video.create(title: args["title"], watched: false)
    }
  end
end
