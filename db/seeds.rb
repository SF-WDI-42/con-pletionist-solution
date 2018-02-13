# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Conference.delete_all
Talk.delete_all

conferences = [{
	name: 'Engineering Conference',
	location: 'San Francisco, CA'
}, {
	name: 'Science Conference',
	location: 'New York City, NY'
}, {
	name: 'Literature Conference',
	location: 'Portland, OR'
}]

created_conferences = Conference.create(conferences);
start_time = 1.days.from_now.at_noon
end_time = start_time + 2.hours

talks = [{
	title: 'Java For Beginners',
	speaker_name: 'Samantha Lee',
	start_time: start_time,
	end_time: end_time,
	conference_id: created_conferences[0].id
}, {
	title: 'Advanced Python',
	speaker_name: 'Mary Jones',
	start_time: start_time,
	end_time: end_time,
	conference_id: created_conferences[0].id
}, {
	title: 'Agile Programming',
	speaker_name: 'Erica Kim',
	start_time: start_time,
	end_time: end_time,
	conference_id: created_conferences[0].id
}, {
	title: 'The Planets',
	speaker_name: 'Michelle Smith',
	start_time: start_time,
	end_time: end_time,
	conference_id: created_conferences[1].id
}, {
	title: 'Writing Your First Novel',
	speaker_name: 'Terrance Houston',
	start_time: start_time,
	end_time: end_time,
	conference_id: created_conferences[2].id
}]

created_talks = Talk.create(talks)

puts('Created ' + String(created_conferences.length) + ' conferences')
puts('Created ' + String(created_talks.length) + ' talks')