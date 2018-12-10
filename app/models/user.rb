class User < ApplicationRecord
  belongs_to :industry
  belongs_to :gender
  belongs_to :guest_from
end