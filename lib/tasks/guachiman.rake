namespace :guachiman do
  desc "Revisa todos los servidores y actualiza su status"
  task :perform_checks => :environment do
    Server.perform_checks!
  end
end