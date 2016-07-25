require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) {User.create(email: 'user@example.com', encrypted_password: 'password123', name: 'XV' )}
  let(:bad_user) {User.new(email: '', password: 'foobar12', name: 'Jenkins')}
  #pending "add some examples to (or delete) #{__FILE__}"
  describe "initialization" do
  	it "should contain an email, password, and a name" do
  		expect(user.email).to be_a String
  		expect(user.encrypted_password).to be_a String
  		expect(user.name).to be_a String
  	end
  	it ".authenticate" do
  		expect(bad_user.valid?).to be_falsey
  		expect(bad_user.email).to eq('')
  		expect(bad_user.password).to eq('foobar12')
  		expect(bad_user.name).to eq('Jenkins')
  	end
  end
end
