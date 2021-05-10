require_relative 'crud'


users = [
    { username: "berlin", password: "berlin123"},
    { username: "perico", password: "perico123"},
    { username: "xoch", password: "xoch123"},
    { username: "yoko", password: "yoko123"},
    { username: "chaparra", password: "chaparra123"},

]

hashed_users = Crud.create_sec(users)

puts hashed_users