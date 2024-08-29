class TravellerRide < ApplicationRecord
  belongs_to :user
  belongs_to :ride
  has_one :sloop, through: :ride

  validates :validate_status, inclusion: { in: ["pending", "accepted", "refused"] }
  scope :accepted, -> { where(validate_status: "accepted") }

  after_update_commit :broadcast_dashboard_link
  after_create_commit :broadcast_skipper_link

  def broadcast_dashboard_link
  broadcast_replace_to "navbar_user_#{user.id}",
                        target: "dashboard_link",
                        partial: "shared/dashboard_update_btn"
  end

  def broadcast_skipper_link
    broadcast_replace_to "navbar_user_#{ride.skipper.id}",
                          target: "dashboard_link",
                          partial: "shared/dashboard_update_btn"
  end
end
