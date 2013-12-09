# == Schema Information
#
# Table name: current_addresses
#
#  id             :integer          not null, primary key
#  street_address :text
#  city           :string(255)
#  state          :string(255)
#  pincode        :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#  user_id        :integer
#

require 'spec_helper'

describe CurrentAddress do
  it { should respond_to :street_address}
  it { should respond_to :city}
  it { should respond_to :state}
  it { should respond_to :pincode}

end
