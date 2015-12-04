deck1 = Deck.create(name: "Super Hard Questions")

deck1.cards.create(prompt: "What's 1 + 1?", answer: "2")
deck1.cards.create(prompt: "Knock Knock...?", answer: "Who's there?")
deck1.cards.create(prompt: "What's 2 + 1?", answer: "3")
deck1.cards.create(prompt: "What color is a yellow flower", answer: "yellow")
deck1.cards.create(prompt: "Word programmers use when they don't want to explain what they did", answer: "algorithm")

User.create(username: "Yoonis", email: "yoonis@gmail.com", password:"123")
User.create(username: "Jane", email: "jane@gmail.com", password:"jane")
