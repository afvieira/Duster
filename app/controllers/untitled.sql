  select user.u 
  from users and serviceprovider.sp from serviceprovider where u.id=sp.user_id

  select
    user.*
  from
    user inner join serviceprovider on user.user_id = serviceprovider.user_id
  where



User.joins(:serviceprovider).where("user.name = ?", "jorge").select("distinct user.*")


 select distinct users.* from users 
 INNER JOIN bars on bars.user_id = user.id
 WHERE bars.foo_id != 5 and users.created_at <= '2012-09-19 10:59:54'

 

SELECT * FROM checkin c INNER JOIN bairros b ON (c.bairro_id = b.id)
WHERE c.user_id = 1 AND b.zona = 'sul'

scope :maid, joins(:serviceprovider).where("serviceprovider.user_id = ?", "1") 


SELECT students.contact_id, addresses.street,
FROM students INNER JOIN addresses ON user.id = serviceprovider.user_id;

joins+="INNER JOIN serviceprovider ON user.id = serviceprovider.user_id"
@students = Student.find(:all, :conditions=> ["addresses.street = ?", "123 First St"], :joins=>[joins])