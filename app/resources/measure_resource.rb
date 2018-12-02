class MeasureResource < JSONAPI::Resource
  attributes :abbreviation, :created_at, :measure_type, :unit, :updated_at

  belongs_to :recipe
  belongs_to :ingredient
end
