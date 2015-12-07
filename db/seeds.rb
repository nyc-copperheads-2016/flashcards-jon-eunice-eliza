User.create(username: "Yoonis", email: "yoonis@gmail.com", password:"123")
User.create(username: "Jane", email: "jane@gmail.com", password:"jane")


deck1 = Deck.create(name: "Super Hard Questions")

deck1.cards.create(prompt: "What's 1 + 1?", answer: "2")
deck1.cards.create(prompt: "Knock Knock...?", answer: "Who's there?")
deck1.cards.create(prompt: "What color is a yellow flower?", answer: "yellow")
deck1.cards.create(prompt: "Word programmers use when they don't want to explain what they did", answer: "algorithm")


trivia = Deck.create(name: "Trivia")
trivia.cards.create(prompt: "What was Oscar the Grouch's original color?", answer: "orange")
trivia.cards.create(prompt: "What did the BBC report on Good Friday 1930?", answer: "there is no news")
trivia.cards.create(prompt: "Bill Clinton answered three questions correctly on what show on 'Wait Wait...Don't Tell Me!'?", answer: "My Little Pony")
trivia.cards.create(prompt: "Where did Ben & Jerry learn to make ice cream?", answer: "Penn State")
trivia.cards.create(prompt: "In 1939, who's nephew wrote an article called 'Why I Hate My Uncle.' He came to the U.S., served in the Navy, and settled on Long Island.", answer: "Hitler")
trivia.cards.create(prompt: "Is Reno farther west than Los Angelos?", answer: "yes")


jokes = Deck.create(name: Code Jokes)

jokes.cards.create(prompt: "How many programmers does it take to change a light bulb?", answer: "None, that’s a hardware problem")
jokes.cards.create(prompt: "What is the most used language in programming?", answer: "Profanity")
jokes.cards.create(prompt: "Why did the database admin leave his wife?", answer: "She had one-to-many relationships")
jokes.cards.create(prompt: "What did Java say to C?", answer: "You’ve got no class")
