require_relative 'wizard'

RSpec.describe Wizard do

  describe 'attributes' do
    before do
      @wizard = Wizard.new
    end

	  it 'has a default health of 50 and an intelligence of 25' do
	  		expect(@wizard.health).to eq(50)
	  		expect(@wizard.intelligence).to eq(25)
	  end

  end

  describe 'methods' do
    before do
      @wizard = Wizard.new
      @wizard2 = Wizard.new
    end
	  it 'has a heal method that increased by 10' do
	  		expect(@wizard.heal).to eq(60)
	  end

	  it 'has a fireball method that attacks an object and reduces the objects health' do
	  		expect(@wizard.attack(@wizard2)).to eq(true)
	  end
	end

  describe 'ancestors' do
    before do
      @wizard = Wizard.new
    end
	    it 'has an ancestor chain that includes Human' do
	    	expect(@wizard.class.ancestors.include?(Human))
	    end
	end
end