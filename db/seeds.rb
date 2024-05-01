# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.delete_all
Board.delete_all
Member.delete_all
State.delete_all
Card.delete_all


usr1 = User.create!(
    user_name: 'FlacoFuenza',
    email: 'dfuenzalida2@miuandes.cl',
    password: '123456'
)

usr2 = User.create!(
    user_name: 'Mel',
    email: 'dszarabia@miuandes.cl',
    password: '123456'
)

usr3 = User.create!(
    user_name: 'DangerousMaster',
    email: 'dlazcano@miuades.cl',
    password: '123456'
)


board1 = Board.create!(
    board_name: 'Board1',
    admin_id: usr1.id
)

board2 = Board.create!(
    board_name: 'Board2',
    admin_id: usr2.id
)


member1 = Member.create!(
    user: usr1,
    board: board1
)

member2 = Member.create!(
    user: usr2,
    board: board1
)

member3 = Member.create!(
    user: usr3,
    board: board1
)

member4 = Member.create!(
    user: usr1,
    board: board2
)

member5 = Member.create!(
    user: usr2,
    board: board2
)

member6 = Member.create!(
    user: usr3,
    board: board2
)


state1 = State.create!(
    state_name: 'To Do',
    board: board1
)

state2 = State.create!(
    state_name: 'In Progress',
    board: board1
)

state3 = State.create!(
    state_name: 'Done',
    board: board1
)

state4 = State.create!(
    state_name: 'To Do',
    board: board2
) 

state5 = State.create!(
    state_name: 'In Progress',
    board: board2
)

state6 = State.create!(
    state_name: 'Done',
    board: board2
)

card1 = Card.create!(
    card_name: 'Card1',
    state: state1,
    card_description: 'Description1',
    user_informer_id: usr1.id,
    user_assignee_id: usr2.id
)

card2 = Card.create!(
    card_name: 'Card2',
    state: state2,
    card_description: 'Description2',
    user_informer_id: usr2.id,
    user_assignee_id: usr3.id
)

card3 = Card.create!(
    card_name: 'Card3',
    state: state3,
    card_description: 'Description3',
    user_informer_id: usr3.id,
    user_assignee_id: usr1.id
)

card4 = Card.create!(
    card_name: 'Card4',
    state: state4,
    card_description: 'Description4',
    user_informer_id: usr1.id,
    user_assignee_id: usr2.id
)

card5 = Card.create!(
    card_name: 'Card5',
    state: state5,
    card_description: 'Description5',
    user_informer_id: usr2.id,
    user_assignee_id: usr3.id
)

card6 = Card.create!(
    card_name: 'Card6',
    state: state6,
    card_description: 'Description6',
    user_informer_id: usr3.id,
    user_assignee_id: usr1.id
)



