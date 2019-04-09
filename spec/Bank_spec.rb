require './lib/Bank.rb'

describe "Account details" do

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

  it 'fail to withdraw if not enough money' do
    account.deposit(500)
    expect{account.withdraw(501)}.to raise_error 'not enough money'
  end

  it 'fails if not a number' do
    expect{account.deposit('hello')}.to raise_error 'needs to be dollar'
    account.deposit(500)
    expect{account.withdraw('hello')}.to raise_error 'needs to be dollar'
  end

  it 'adds the time to each transaction' do
    account.deposit(500)
    account.withdraw(300)
    expect(account.balance).to eq(200)

    expect(account.statement).to include('2019 : 4 : 9 - deposit - 500 - balance - 500')
    expect(account.statement).to include('2019 : 4 : 9 - withdraw - 300 - balance - 200')
  end
end
