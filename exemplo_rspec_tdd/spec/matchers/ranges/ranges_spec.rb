describe (1..5), 'Ranges' do
    it '#cover - with one element' do 
        expect(subject).to  cover(2)
    end

    it '#cover - with more than one element' do 
        expect(subject).to  cover(2,5)
    end

    it '#cover | not to - with more than one element' do 
        expect(subject).not_to  cover(0,6)
    end
end
