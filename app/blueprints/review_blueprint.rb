class ReviewBlueprint < Blueprinter::Base
  identifier :id
  
  fields :title, :description, :score, :airline_id
end
