class Board < ApplicationRecord
  belongs_to :course
  enum kind: [ :pre_enroll, :early_access ]
end
