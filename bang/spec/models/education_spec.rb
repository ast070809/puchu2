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
  it { should respond_to :degree}
  it { should respond_to :deg_type}
  it { should respond_to :subject}
  it { should respond_to :college_id}
  it { should respond_to :year}
end
