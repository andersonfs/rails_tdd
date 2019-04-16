require 'pessoa'

describe 'Atributos' do 
    subject { Pessoa.new }

    before do 
        subject.nome = 'Anderson'
        subject.idade = 40
    end

    it 'have_attributes' do         
        expect(subject).to have_attributes(nome: 'Anderson', idade: 40)  
    end
    
    it 'have attributes with starting_witn and be >' do 
        expect(subject).to have_attributes(nome: starting_with("A"), idade: (be > 30))  
    end 
    
    it 'have attributes with start_witn and be >' do 
        expect(subject).to have_attributes(nome: start_with("A"), idade: (be > 30))  
    end

    it 'have attributes with a_string_starting_witn and be >' do 
        expect(subject).to have_attributes(nome: a_string_starting_with("A"), idade: (be > 30))  
    end

    it 'have attributes with a_string_starting_witn and a_value >' do 
        expect(subject).to have_attributes(nome: a_string_starting_with("A"), idade: (a_value > 30))  
    end
end