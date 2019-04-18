require 'pessoa'

describe 'Atributos com Let' do 
    let(:pessoa) { Pessoa.new }

    it 'have_attibutes - first call' do
        pessoa.nome = "Anderson"
        pessoa.idade = 40

        expect(pessoa).to have_attibutes(nome: a_string_starting_with("A"), idade: (a_value>=20))  
    end

    it 'have_attibutes - second call' do
        pessoa.nome = "Welma"
        pessoa.idade = 36

        expect(pessoa).to have_attibutes(nome: a_string_starting_with("W"), idade: (a_value>=30))
    end
end