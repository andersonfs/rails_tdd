RSpec::Matchers.define_negated_matcher :exclude, :include

describe Array.new([1,2,3]), "Array", type: 'arrays' do 
    it '#include - with one item' do 
        expect(subject).to  include(2)
    end

    it { expect(subject).to  exclude(4) }
    
    it '#include - with more than on item' do 
        expect(subject).to  include(2,1)
    end

    it '#contain_exactly' do 
        expect(subject).to  contain_exactly(1,2,3)
    end

    it '#contain_exactly - without elements order' do 
        expect(subject).to  contain_exactly(3,1,2)
    end

    it '#match_array' do 
        expect(subject).to  match_array([1,2,3])
    end    
end