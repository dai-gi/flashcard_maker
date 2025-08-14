# == Schema Information
#
# Table name: business_rules
#
#  id                          :bigint           not null, primary key
#  question                    :string
#  answer                      :text
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#
# Indexes
#
# Foreign Keys
#
class Card < ApplicationRecord
end
