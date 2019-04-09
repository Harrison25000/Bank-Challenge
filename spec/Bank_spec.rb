require './lib/Bank.rb'

describe "it exists" do

  let(:account) {Account.new}

  it 'exists' do

  end

  it 'be able to deposit money into account' do
    expect(account.deposit(500)).to eq(500)
  end
end
