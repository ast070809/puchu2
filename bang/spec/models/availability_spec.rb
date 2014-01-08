# == Schema Information
#
# Table name: availabilities
#
#  id         :integer          not null, primary key
#  from       :date
#  to         :date
#  interest   :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Availability do
  pending "add some examples to (or delete) #{__FILE__}"
end
