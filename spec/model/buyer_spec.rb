require 'rails_helper'
RSpec.describe Buyer, type: :model do
  describe 'validations' do
    subject { build(:buyer) }

    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to have_many(:favorites) }
    it { is_expected.to have_many(:products) }
  end
end
