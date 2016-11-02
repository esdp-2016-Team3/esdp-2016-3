AdminUser.create!(email: 'esdp20163@gmail.com', password: 'esdp2016', password_confirmation: 'esdp2016')
Position.create(title: "Студент", id: 1)
Position.create(title: "Преподаватель", id: 2)

HomeworkStatus.create(status: "Sent", id: 1)
HomeworkStatus.create(status: "Unchecked", id: 2)
HomeworkStatus.create(status: "Checked", id: 3)

fixtures_path = Rails.root.join('app', 'assets', 'images', 'avatars')
books_path = Rails.root.join('app', 'assets', 'images', 'books')

User.create(name: "stud1", email: 'stud1@gmail.com', status: 'active', position_id: 1, teacher_id: 3, skype: "skypestud.1", phone: +9379991, description: 'Я хороший студент', avatar: File.open(fixtures_path.join('stud1.jpg')), password: 'asdasd', password_confirmation: 'asdasd', confirmed_at: '2016-09-28 13:44:12')
User.create(name: "stud2", email: 'stud2@gmail.com', status: 'active', position_id: 1, teacher_id: 3, skype: "skypestud.2", phone: +9379992, description: 'Я хорошая студентка', avatar: File.open(fixtures_path.join('stud2.jpg')), password: 'asdasd', password_confirmation: 'asdasd', confirmed_at: '2016-09-28 13:46:12')

User.create(name: "teach1", email: 'teach1@gmail.com', status: 'active', position_id: 2, skype: "teachskype.1", phone: +9379981, description: 'Я супер преподаватель научу вас английскому', avatar: File.open(fixtures_path.join('teach1.jpg')), password: 'asdasd', password_confirmation: 'asdasd', confirmed_at: '2016-09-28 13:47:12')
User.create(name: "teach2", email: 'teach2@gmail.com', status: 'active', position_id: 2, skype: "teachskype.2", phone: +9379981, description: 'Я квалифицированная преподавательница', avatar: File.open(fixtures_path.join('teach2.jpg')), password: 'asdasd', password_confirmation: 'asdasd', confirmed_at: '2016-09-28 13:48:12')

User.create(name: "pend1", email: 'pend1@gmail.com', status: 'notactive', position_id: 1, skype: "pend.1", phone: +9379971, description: 'Я способный студент', avatar: File.open(fixtures_path.join('pend1.jpg')), password: 'asdasd', password_confirmation: 'asdasd', confirmed_at: '2016-09-28 13:49:12')
User.create(name: "pend2", email: 'pend2@gmail.com', status: 'notactive', position_id: 2, skype: "pend.2", phone: +9379971, description: 'Помогу подготовиться к TOEFL', avatar: File.open(fixtures_path.join('pend2.jpg')), password: 'asdasd', password_confirmation: 'asdasd', confirmed_at: '2016-09-28 13:49:12')

Content.create(title: "Главная анонимная", description: "контентная информация")

Level.create(name: "Beginner")
Level.create(name: "Intermediate")
Level.create(name: "Advanced")
Level.create(name: "Proficiency")

LibraryFile.create(name: 'Book1', description: "Fazovye_perehody", user_id: 3, path_file: 'Fazovye_perehody.pdf', literature: File.open(books_path.join('Fazovye_perehody.pdf')))
LibraryFile.create(name: 'Book2', description: "Teplotehnika", user_id: 3, path_file: 'Teplotehnika.pdf', literature: File.open(books_path.join('Teplotehnika.pdf')))

HomeworkFile.create(description: Faker::Lorem.sentence, homework_id: 1, pather: 'hw1.pdf', file: File.new('public/homework_files/hw1.pdf'))
HomeworkFile.create(description: Faker::Lorem.sentence, homework_id: 2, pather: 'hw2.pdf', file: File.new('public/homework_files/hw2.pdf'))
HomeworkFile.create(description: Faker::Lorem.sentence, homework_id: 2, pather: 'hw2.pdf', file: File.new('public/homework_files/hw2.pdf'))
HomeworkFile.create(description: Faker::Lorem.sentence, homework_id: 2, pather: 'hw2.pdf', file: File.new('public/homework_files/hw2.pdf'))

Homework.create(title: 'Homework1', user_id: 3, type_homework: 'File')
Homework.create(title: 'Homework2', user_id: 3, type_homework: 'File')
Homework.create(title: 'Homework3', user_id: 3, type_homework: 'File')
Homework.create(title: 'Homework4', user_id: 3, type_homework: 'File')

HomeworkAssignment.create(user_id: 1, homework_id: 1, homework_status_id: 1 )
HomeworkAssignment.create(user_id: 1, homework_id: 2, homework_status_id: 1 )

count = 0
7.times do

  count += 1
  Question.create(content: Faker::Lorem.sentence, level_id: 1, is_active: true)
  Answer.create(content: Faker::Lorem.sentence + '|true', is_correct: true, question_id: count)
  Answer.create(content: Faker::Lorem.sentence + '|false', is_correct: false, question_id: count)
  Answer.create(content: Faker::Lorem.sentence + '|false', is_correct: false, question_id: count)
  Answer.create(content: Faker::Lorem.sentence + '|false', is_correct: false, question_id: count)

  count += 1
  Question.create(content: Faker::Lorem.sentence, level_id: 2, is_active: true)
  Answer.create(content: Faker::Lorem.sentence + '|true', is_correct: true, question_id: count)
  Answer.create(content: Faker::Lorem.sentence + '|false', is_correct: false, question_id: count)
  Answer.create(content: Faker::Lorem.sentence + '|false', is_correct: false, question_id: count)
  Answer.create(content: Faker::Lorem.sentence + '|false', is_correct: false, question_id: count)

  count += 1
  Question.create(content: Faker::Lorem.sentence, level_id: 3, is_active: true)
  Answer.create(content: Faker::Lorem.sentence + '|true', is_correct: true, question_id: count)
  Answer.create(content: Faker::Lorem.sentence + '|false', is_correct: false, question_id: count)
  Answer.create(content: Faker::Lorem.sentence + '|false', is_correct: false, question_id: count)
  Answer.create(content: Faker::Lorem.sentence + '|false', is_correct: false, question_id: count)

  count += 1
  Question.create(content: Faker::Lorem.sentence, level_id: 4, is_active: true)
  Answer.create(content: Faker::Lorem.sentence + '|true', is_correct: true, question_id: count)
  Answer.create(content: Faker::Lorem.sentence + '|false', is_correct: false, question_id: count)
  Answer.create(content: Faker::Lorem.sentence + '|false', is_correct: false, question_id: count)
  Answer.create(content: Faker::Lorem.sentence + '|false', is_correct: false, question_id: count)
end