class Target < ApplicationRecord
  belongs_to :user

  enum status: { process: 0, success: 1 , failed: 2 }
end
