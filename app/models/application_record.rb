class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  connects_to shards: {
    default: { writing: :primary, reading: :primary },
    practice1: { writing: :primary_practice1, reading: :primary_practice1 },
    practice2: { writing: :primary_practice2, reading: :primary_practice2 }
  }
end
