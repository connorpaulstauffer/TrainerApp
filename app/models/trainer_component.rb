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

	validates :trainer_id, :component_id, :component_type, presence: true

	belongs_to :trainer
	belongs_to :component, polymorphic: true

end
