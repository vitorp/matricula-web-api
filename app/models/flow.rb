class Flow < ApplicationRecord
  # Associations
  belongs_to :curriculum
  has_many :flow_subjects, dependent: :destroy
  has_many :subjects, through: :flow_subjects do
    def by_period(order)
      where(flow_subjects: {order: order})
    end
  end

  # Validations
  validates :name, presence: true
end
