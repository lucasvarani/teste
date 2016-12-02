class Pessoa < ActiveRecord::Base

  def cadastro_teste
    "#{name} - #{age}" if name && age
  end
end
