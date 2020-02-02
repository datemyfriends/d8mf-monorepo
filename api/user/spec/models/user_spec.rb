require 'rails_helper'

RSpec.describe User, type: :model do
    # Association test
  it { should have_many(:friendships).dependent(:destroy) }
  it { should have_many(:friends).dependent(:destroy) }

  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:interested_in) }
  it { should validate_presence_of(:sex) }
end
