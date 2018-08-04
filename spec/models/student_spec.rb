require 'rails_helper'

RSpec.describe Student, type: :model do
  let(:student) {Student.new}
  describe 'attributes' do
    it 'should have attribute full name' do
      expect(student).to respond_to(:full_name)
    end
    it 'should have attribute username' do
      expect(student).to respond_to(:username)
    end
    it 'should have attribute password' do
      expect(student).to respond_to(:password)
    end
    it 'should have attribute address' do
      expect(student).to respond_to(:address)
    end
    it 'should have attribute school_level' do
      expect(student).to respond_to(:school_level)
    end
    it 'should have attribute phone_number' do
      expect(student).to respond_to(:phone_number)
    end

  end
end
