require 'net/ping'

class Check < ActiveRecord::Base

  belongs_to :server

  def result
    successful ? "ARRIBA (#{duration})" : "ABAJO"
  end

  def perform!
    perform
    save!
  end

  def perform
    checker = Net::Ping::TCP.new(server.address, server.port)
    if result = checker.ping
      self.successful = true
      self.duration   = checker.duration
    end
  end

end
