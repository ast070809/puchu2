# == Schema Information
#
# Table name: educations
#
#  id         :integer          not null, primary key
#  degree     :string(255)
#  deg_type   :string(255)
#  subject    :string(255)
#  university :string(255)
#  year       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

require 'spec_helper'

describe Education do
  it { should respond_to :degree}
  it { should respond_to :deg_type}
  it { should respond_to :subject}
  it { should respond_to :university}
  it { should respond_to :year}

end
