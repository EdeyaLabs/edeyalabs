class Email
  include ActiveAttr::Model

  attribute :email
  attribute :name
  attribute :message

  attr_accessible :email, :name, :message

  validates_presence_of :email, :name, :message
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  validates_length_of :message, :maximum => 500

  def send_email
  end
end
