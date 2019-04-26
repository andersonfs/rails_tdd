describe 'All', type: 'arrays' do 
    it { expect([1,3,7,9]).to all((be_odd).and be_an(Integer)) }
    it { expect(['RUBY','RAILS']).to all (be_a(String).and include('R')) }
end