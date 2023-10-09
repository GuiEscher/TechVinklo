class User < ApplicationRecord
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "formato de e-mail inválido" }
    validates :cpf, format: { with: /\A\d{3}(\.\d{3}){2}-\d{2}|\d{11}\z/, message: "formato de CPF inválido" }
    validates :phone, format: { with: /\A\(\d{2}\) \d{9}|\d{2} \d{9}|\(\d{2}\)\d{9}|\d{2}\d{9}\z/, message: "formato de telefone inválido" }
  end
  