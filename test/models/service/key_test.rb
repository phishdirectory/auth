# == Schema Information
#
# Table name: service_keys
#
#  id         :bigint           not null, primary key
#  api_key    :string           not null
#  hash_key   :string           not null
#  notes      :text
#  status     :string           default("active"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  service_id :bigint           not null
#
# Indexes
#
#  index_service_keys_on_api_key     (api_key) UNIQUE
#  index_service_keys_on_service_id  (service_id)
#
# Foreign Keys
#
#  fk_rails_...  (service_id => services.id)
#
require "test_helper"

class Service::KeyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
