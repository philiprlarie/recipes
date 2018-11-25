describe RecipeIngredient do
  describe 'no measurements present' do
    it 'validates that a measurement must be present' do
      record = RecipeIngredient.new
      record.valid?
      record.errors[:base].should include("a measure must be present")
    end
  end

  describe 'mass' do
    it 'validates that volume is not also present' do
      record = RecipeIngredient.new
      record.mass = 123
      record.volume = 456
      record.valid?
      record.errors[:base].should include("both mass and volume can't be present")
    end

    it'validates that units is not also present' do
      record = RecipeIngredient.new
      record.mass = 123
      record.units = 456
      record.valid?
      record.errors[:base].should include("both mass and units can't be present")
    end
  end

  describe 'volume' do
    it 'validates that mass is not also present' do
      record = RecipeIngredient.new
      record.mass = 123
      record.volume = 456
      record.valid?
      record.errors[:base].should include("both mass and volume can't be present")
    end

    it'validates that units is not also present' do
      record = RecipeIngredient.new
      record.volume = 123
      record.units = 456
      record.valid?
      record.errors[:base].should include("both volume and units can't be present")
    end
  end

  describe 'units' do
    it 'validates that mass is not also present' do
      record = RecipeIngredient.new
      record.mass = 123
      record.units = 456
      record.valid?
      record.errors[:base].should include("both mass and units can't be present")
    end

    it'validates that volume is not also present' do
      record = RecipeIngredient.new
      record.volume = 123
      record.units = 456
      record.valid?
      record.errors[:base].should include("both volume and units can't be present")
    end
  end
end
