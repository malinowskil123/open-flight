class AirlineBlueprint < Blueprinter::Base
  identifier :id

  fields :name, :slug
  association :reviews
end