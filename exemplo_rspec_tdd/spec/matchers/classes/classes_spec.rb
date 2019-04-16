require 'string_nao_vazia'

describe 'Classes' do 
    it 'be_instace_of' do 
        expect(10).to be_instance_of(Integer) #Exatamente a classe
        str = StringNaoVazia.new
        expect(str).to be_instance_of(StringNaoVazia) #Exatamente a classe
    end

    it 'be_kind_of Integer' do 
        expect(10).to be_kind_of(Integer)  #Poder ser por herança
    end

    it 'be_kind_of StringNaoVazia' do 
        str = StringNaoVazia.new
        expect(str).to be_kind_of(String)  #Poder ser por herança
        expect(str).to be_kind_of(StringNaoVazia)  #Poder ser por herança
    end

    it 'respond_to' do 
        expect("ruby").to respond_to(:size)
        expect("ruby").to respond_to(:count)
    end

    it 'be_a' do 
        str = StringNaoVazia.new
        expect(str).to be_a(String)
        expect(str).to be_a(StringNaoVazia)
    end

    it 'be_an' do 
        str = StringNaoVazia.new
        expect(str).to be_an(String)
        expect(str).to be_an(StringNaoVazia)
    end
end