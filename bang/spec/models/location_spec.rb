# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  city       :string(255)
#  state      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Location do
  it{should respond_to :city}
  it { should respond_to :state}
end
