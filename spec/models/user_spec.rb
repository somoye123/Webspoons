require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:status) }
    it { should validate_presence_of(:phone) }
    it { should validate_uniqueness_of(:email).case_insensitive }
    it {
      should allow_values('somoye@gmail.com', 'ayoutunde@yahoo.com')
        .for(:email)
    }

    it {
      should_not allow_values('somoye', 'ayotunde')
        .for(:email)
    }
  end
end
