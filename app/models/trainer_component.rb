# == Schema Information
#
# Table name: trainer_components
#
#  id             :integer          not null, primary key
#  trainer_id     :integer          not null
#  component_id   :integer          not null
#  component_type :string           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class TrainerComponent < ActiveRecord::Base
end
