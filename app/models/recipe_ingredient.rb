class RecipeIngredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :ingredient

  validate :one_measure_present

  def one_measure_present
    if (!mass && !volume && !units)
      errors.add(:base, "a measure must be present")
    end

    if mass && volume
      errors.add(:base, "both mass and volume can't be present")
    end
    if mass && units
      errors.add(:base, "both mass and units can't be present")
    end
    if volume && units
      errors.add(:base, "both volume and units can't be present")
    end
  end
end
