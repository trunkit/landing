rails_env = ENV['RAILS_ENV'] || 'production'

# 2 workers and 1 master
worker_processes 2

# Load rails into the master before forking workers
# for super-fast worker spawn times
preload_app true

# Restart any workers that haven't responded in 30 seconds
timeout 30

after_fork do |server, worker|
	ActiveRecord::Base.establish_connection if defined?(ActiveRecord)

	# Reset the Dalli Store Cache
	if defined?(Dalli)
		Rails.cache.reset
		ObjectSpace.each_object(ActionDispatch::Session::DalliStore) { |obj| obj.reset }
	end
end
