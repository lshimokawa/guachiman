class CheckObserver < ActiveRecord::Observer

  def after_save(check)
    NotificationMailer.server_failed(check.server).deliver unless check.successful
  end

end
