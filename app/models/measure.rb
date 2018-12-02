class Measure < ActiveRecord::Base
  # https://www.justinweiss.com/articles/creating-easy-readable-attributes-with-activerecord-enums/
  enum measure_type: { volume: 0, mass: 1,  number: 2 }
end
