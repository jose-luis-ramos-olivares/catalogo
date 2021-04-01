class CreditCard < ApplicationRecord
    has_many :transbanks, as: :category
end
