# == Schema Information
#
# Table name: permanent_addresses
#
#  id             :integer          not null, primary key
#  street_address :text
#  city           :string(255)
#  state          :string(255)
#  pincode        :string(255)
#  user_id        :integer
#  created_at     :datetime
#  updated_at     :datetime
#

require 'spec_helper'

describe PermanentAddress do
  it { should respond_to :street_address}
  it { should respond_to :city}
  it { should respond_to :state}
  it { should respond_to :pincode}
end
