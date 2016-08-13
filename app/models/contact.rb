class Contact < ActiveRecord::Base
  belongs_to :kind
  has_one :address #endereço pertence a um contato
  has_many :phones #diz ao codigo que o models contatos tem telefones
  
  accepts_nested_attributes_for :address #contato pode receber atributos do endereço (address)
  accepts_nested_attributes_for :phones, reject_if: :all_blank, allow_destroy: true 

  validates :name, presence: true, length: {minimum: 3}
end