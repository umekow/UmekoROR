class Student
 @first_name
 @last_name
 @email
 @username
 @password

#  def initilize (first_name, last_name, email = nil, username = nil, password = nil)
# 	@first_name = first_name
# 	@last_name = last_name
# 	@email = email 
# 	@username = username
# 	@password = password 
#  end  

	def set_first_name(first_name)
		@first_name = first_name
  end 
	def set_last_name(last_name)
		@last_name = last_name
	end
	def set_email(email)
		@email = email 
	end
	def set_username(username)
		@username = username
	end
	def set_password(password)
		@password = password
	end

 def to_s 
	return "Name : #{@first_name} #{@last_name} \n Email : #{@email} \n Username : #{@username} \n Password : #{@password} "
 end 
end


student_001 = Student.new
student_001.set_first_name("Umeko")
student_001.set_last_name("Walker")
student_001.set_email("uw@meko.com")
student_001.set_username("umekow")
student_001.set_password("hello world")



puts student_001