class Notification < ActionMailer::Base
  default from: "guachiman@ruby.pe"

  def server_failed(server)
    @server = server

    mail  to:       CONFIG["notification_emails"].join(", "),
          subject:  "Houston, we have a problem (#{@server.address_and_port})"
  end

end
