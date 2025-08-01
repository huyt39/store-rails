class Subcriber < ApplicationRecord
  belongs_to :product
  generates_token_for :unsubcribe
end
