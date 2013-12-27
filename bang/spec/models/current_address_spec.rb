# == Schema Information
#
# Table name: current_addresses
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

describe CurrentAddress do
  pending "add some examples to (or delete) #{__FILE__}"
end
