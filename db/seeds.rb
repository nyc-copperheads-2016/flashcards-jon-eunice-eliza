User.create(username: "Yoonis", email: "yoonis@gmail.com", password:"123")
User.create(username: "Jane", email: "jane@gmail.com", password:"jane")


deck1 = Deck.create(name: "Super Hard Questions")

deck1.cards.create(prompt: "What's 1 + 1?", answer: "2")
deck1.cards.create(prompt: "Knock Knock...?", answer: "Who's there?")
deck1.cards.create(prompt: "What color is a yellow flower?", answer: "yellow")
deck1.cards.create(prompt: "Word programmers use when they don't want to explain what they did", answer: "algorithm")


deck2 = Deck.create(name: Code Jokes)

deck2.cards.create(prompt: "How many programmers does it take to change a light bulb?", answer: "None, that’s a hardware problem.")
deck2.cards.create(prompt: "What is the most used language in programming?", answer: "Profanity.")
deck2.cards.create(prompt: "Why did the database admin leave his wife?", answer: "She had one-to-many relationships.")
deck2.cards.create(prompt: "What did Java say to C?", answer: "You’ve got no class.")

