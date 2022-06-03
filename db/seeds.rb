puts "📝 Seeding todos..."

Habit.destroy_all

Habit.create(id: 0, habit: "unassigned")
Habit.create(id: 1, habit: "chores")
Habit.create(id: 2, habit: "bootcamp")
Habit.create(id: 3, habit: "exercise")

Todo.create(item: "clean table", habit_id: 1)
Todo.create(item: "finish coding phase 3 project", habit_id: 2)
Todo.create(item: "walk on treadmill", habit_id: 3)
Todo.create(item: "walk dog", habit_id: 3)
Todo.create(item: "walk", habit_id: 3)

puts "✅ Done seeding!"
