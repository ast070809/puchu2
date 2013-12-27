# == Schema Information
#
# Table name: educations
#
#  id         :integer          not null, primary key
#  degree     :string(255)
#  deg_type   :string(255)
#  subject    :string(255)
#  year       :string(255)
#  user_id    :integer
#  college_id :integer
#  deg_time   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Education do
  pending "add some examples to (or delete) #{__FILE__}"
end
