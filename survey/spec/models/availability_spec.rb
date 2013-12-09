# == Schema Information
#
# Table name: availabilities
#
#  id         :integer          not null, primary key
#  from       :date
#  to         :date
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

require 'spec_helper'

describe Availability do
	it {should respond_to :from}
	it {should respond_to :to}
	
end
