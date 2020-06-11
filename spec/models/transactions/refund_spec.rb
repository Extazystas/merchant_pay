require 'rails_helper'

RSpec.describe Transactions::Refund, type: :model do
  include_context 'transaction ancestors context'

  subject { build(:refund_transaction) }

  it { expect(subject).to be_valid }
  it { expect(described_class.superclass).to eq Transaction }

  it_behaves_like 'child transaction with validations and associations'
end