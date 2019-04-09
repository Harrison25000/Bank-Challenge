require './lib/Bank.rb'

describe "it exists" do

  let(:account) {Account.new}

  it 'exists' do

  end

  it 'be able to deposit money into account' do
    account.deposit(500)
    expect(account.balance).to eq(500)
  end

  it 'be able to withraw money from account' do
    account.deposit(500)
    account.withdraw(250)
    expect(account.balance).to eq(250)
  end
end
