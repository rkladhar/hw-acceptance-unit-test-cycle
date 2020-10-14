require 'spec_helper'
require 'rails_helper'

describe Movie do

  describe "add director to existing movie" do
    before do
      @movie = FactoryGirl.create(:movie)
      @movie.director = "Ridley Scott"
      @movie.save
    end
    subject { @movie }

    it{expect(subject.director).to eq("Ridley Scott")}
    
    describe "find movie with same director" do
      before do
        [:star_wars, :blade_runner, :thx].each do |m|
          FactoryGirl.create(m)
        end
      end
        
      it { Movie.find_all_by_director.should eql(@movie.director) }
    end
  end
end
