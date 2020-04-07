# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first

employee1 = Employee.create(name: "Bobby Twothumbs", specialty: "hair")
employee2 = Employee.create(name: "Kanye North", specialty: "makeup")
employee3 = Employee.create(name: "Mr. Hammer", specialty: "nails")

client1 = Client.create(name: "Richard Bobo", member_since: 2013)
client2 = Client.create(name: "Dan Succar", member_since: 2014)
client3 = Client.create(name: "Carla Sahagun", member_since: 1989)
client4 = Client.create(name: "Chine Anikwe", member_since: 2004)
client5 = Client.create(name: "Paul Nicholsen", member_since: 2019)

appointment1 = Appointment.create(employee_id: employee1.id, client_id: client1.id, service: "Nails", apt_time: "4:30 PM")
appointment2 = Appointment.create(employee_id: employee3.id, client_id: client3.id, service: "Haircut & nails", apt_time: "3:30 PM")
appointment3 = Appointment.create(employee_id: employee2.id, client_id: client5.id, service: "Haircut", apt_time: "10:00 AM")
appointment4 = Appointment.create(employee_id: employee1.id, client_id: client2.id, service: "Nails", apt_time: "11:00 PM")
appointment5 = Appointment.create(employee_id: employee1.id, client_id: client4.id, service: "Haircut", apt_time: "1:00 PM")
appointment6 = Appointment.create(employee_id: employee3.id, client_id: client1.id, service: "Haircut", apt_time: "2:00 PM")
appointment7 = Appointment.create(employee_id: employee2.id, client_id: client3.id, service: "Makeup & head massage", apt_time: "4:00 PM")
appointment8 = Appointment.create(employee_id: employee1.id, client_id: client5.id, service: "Makeup & head massage", apt_time: "6:00 PM")



