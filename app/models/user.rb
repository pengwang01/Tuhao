class User < ActiveRecord::Base
	# attr_accessor :password

	# before_save :encrypt_password

	# validates_confirmation_of :password
	# validates_presence_of :password, :on => :create
	# validates_presence_of :email
	# validates_uniqueness_of :email

	# def self.authenticate(email, password)
	# 	user = User.find_by_email(email)
	# 	puts password
	# 	puts user.password_hash
	# 	puts user.password_salt
	# 	puts BCrypt::Engine.hash_secret(password, user.password_salt)
	# 	if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
	# 		user
	# 	else
	# 		nil
	# 	end
	# end


	# def encrypt_password
	# 	if password.present?
	# 		puts password
	# 		self.password_salt = BCrypt::Engine.generate_salt
	# 		puts self.password_salt
	# 		self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
	# 		puts self.password_hash
	# 	end
	# end
	has_secure_password
end
