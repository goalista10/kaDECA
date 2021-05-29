require 'rails_helper'
RSpec.describe Seller, type: :model do
  describe 'validations' do
    subject { build(:seller) }

    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:contact) }
    it { is_expected.to validate_presence_of(:block) }
    it { is_expected.to validate_presence_of(:lot) }
    it { is_expected.to validate_presence_of(:fb) }
    it { is_expected.to have_many(:products) }
  end
end
