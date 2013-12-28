# == Schema Information
#
# Table name: colleges
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  location_id :integer
#  created_ait {t  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

describe College do
  it {should respond_to :name}
  it {should respond_to :location_id}
end
