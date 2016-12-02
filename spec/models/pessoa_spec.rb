require 'rails_helper'

describe Pessoa do
  describe '#cadastro_teste' do
    context 'quando nome e idade nao for nil' do
      subject do
        Pessoa.new(name: 'Joao', age: 24)
      end
      it 'exibe' do
        expect(subject.cadastro_teste).to eq('Joao - 24')
      end
    end
    context 'quando for nil' do
      subject do
        Pessoa.new
      end

      it 'nil' do
        expect(subject.cadastro_teste).to be_nil
      end
    end
  end
end
