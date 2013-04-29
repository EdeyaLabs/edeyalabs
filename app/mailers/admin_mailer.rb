class AdminMailer < ActionMailer::Base
  default to: "harry@edeyalabs.com, vincent@edeyalabs.com, harvey@edeyalabs.com, hello@edeyalabs.com"

  def send_message(from, name, message)
    @message = message
    @name = name
    mail(:from => from, :subject => "[EdeyaLabs] You Got Mail!")
  end
end
