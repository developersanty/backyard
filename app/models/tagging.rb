class Tagging < ApplicationRecord
  belongs_to :block
  belongs_to :tag
end
