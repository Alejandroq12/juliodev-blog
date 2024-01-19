# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

first_user = User.create(name: 'Julio', photo: 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', bio: 'Developer from El Salvador.')
second_user = User.create(name: 'Alejandro', photo: 'https://images.unsplash.com/photo-1633332755192-727a05c4013d?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', bio: 'Developer from El Salvador.')
third_user = User.create(name: 'Damaris', photo: 'https://images.unsplash.com/photo-1587614382231-d1590f0039e7?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', bio: 'Nurse from El Salvador.')
fourth_user = User.create(name: 'Jennifer', photo: 'https://images.unsplash.com/photo-1586297135537-94bc9ba060aa?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', bio: 'Nurse from USA.')
fifth_user = User.create(name: 'Saumira', photo: 'https://images.unsplash.com/photo-1543269664-7eef42226a21?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', bio: 'Journalist from El Salvador.')
sixth_user = User.create(name: 'Haydee', photo: 'https://images.unsplash.com/photo-1605993439219-9d09d2020fa5?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', bio: 'Chef from El salvador.')

first_post = Post.create(author: first_user, title: 'Hello, I love coding.', text: 'This is my first post')
second_post = Post.create(author: first_user, title: 'Hello, I am thing all day long about space and time complexity.', text: 'This is my second post')
third_post = Post.create(author: first_user, title: 'Hello, I want to learn GO and Python', text: 'This is my third post')

fourth_post = Post.create(author: second_user, title: 'I am learning Git. What advice would you give me?', text: 'This is my first post')
fifth_post = Post.create(author: second_user, title: 'The most important thing about learning is to "focus" and avoid distractions.', text: 'This is my second post')
sixth_post = Post.create(author: second_user, title: 'Hello, what are you learning?', text: 'This is my third post')

seventh_post = Post.create(author: third_user, title: 'Hello, it is very important to take suplements in case you are not eating well in case you want to be a high performer delveloper.', text: 'This is my first post')
eight_post = Post.create(author: third_user, title: 'Hello, I specialize in helping developer take good care of themselves.', text: 'This is my second post')
nineth_post = Post.create(author: third_user, title: 'Hello, waht suplemments are you taking?', text: 'This is my third post')

tenth_post = Post.create(author: fourth_user, title: 'Hello, how many hour do you sleep? In case you want to be a healthy developer you must sleep well.', text: 'This is my first post')
eleventh_post = Post.create(author: fourth_user, title: 'Hello, how many hour are you sitting each day?', text: 'This is my second post')
twelth_post = Post.create(author: fourth_user, title: 'Hello, how do you take care of your mental health?', text: 'This is my third post')

thirteenth_post = Post.create(author: fifth_user, title: 'Hello, I will teach you how to create a cool personal brand!', text: 'This is my first post')
fourteenth_post = Post.create(author: fifth_user, title: 'Hello, how do you use social media to promote your personal brand?', text: 'This is my second post')
fifteenth_post = Post.create(author: fifth_user, title: 'Hello, how are you taking advantage of technology to promote yourself?', text: 'This is my third post')

sixteenth_post = Post.create(author: sixth_user, title: 'Hello, I will teach you what to eat in case you want to be a high performer!', text: 'This is my first post')
seventeenth_post = Post.create(author: sixth_user, title: 'Hello, I will guide you step by step to avoid obesity.', text: 'This is my second post')
eighteenth_post = Post.create(author: sixth_user, title: 'Hello, always eat your vegetables!', text: 'This is my third post')

# Comments for the first post
Comment.create(post: first_post, user: second_user, text: 'Welcome to the coding world, Julio! Keep up the passion.')
Comment.create(post: first_post, user: third_user, text: 'Coding is a great skill to have. Excited to see what you build!')
Comment.create(post: first_post, user: fourth_user, text: 'Loving coding is the first step to becoming a great developer!')

# Comments for the second post
Comment.create(post: second_post, user: second_user, text: 'Interesting thoughts on complexity!')
Comment.create(post: second_post, user: third_user, text: 'Would love to learn more!')
Comment.create(post: second_post, user: fourth_user, text: 'Great post, keep sharing!')

# Comments for the third post
Comment.create(post: third_post, user: fifth_user, text: 'Python is a great choice!')
Comment.create(post: third_post, user: sixth_user, text: 'I am also interested in GO.')
Comment.create(post: third_post, user: first_user, text: 'Looking forward to learning together!')

# Comments for the fourth post
Comment.create(post: fourth_post, user: first_user, text: 'Git is essential, start with the basics.')
Comment.create(post: fourth_post, user: fifth_user, text: 'Remember to commit often.')
Comment.create(post: fourth_post, user: sixth_user, text: 'Branching is a powerful feature!')

# Comments for the fifth post
Comment.create(post: fifth_post, user: second_user, text: 'Focus is key, couldn\'t agree more.')
Comment.create(post: fifth_post, user: third_user, text: 'Distractions are everywhere, good point!')
Comment.create(post: fifth_post, user: first_user, text: 'Do you have tips for staying focused?')

# Comments for the sixth post
Comment.create(post: sixth_post, user: fourth_user, text: 'Currently learning about cloud computing.')
Comment.create(post: sixth_post, user: fifth_user, text: 'I\'m into web development, what about you?')
Comment.create(post: sixth_post, user: sixth_user, text: 'Exploring AI and machine learning here.')

# Comments for the seventh post
Comment.create(post: seventh_post, user: first_user, text: 'Supplements are a great addition to a balanced diet.')
Comment.create(post: seventh_post, user: second_user, text: 'What supplements do you recommend?')
Comment.create(post: seventh_post, user: fourth_user, text: 'Ensuring proper nutrition is crucial, good point!')

# Comments for the eighth post
Comment.create(post: eight_post, user: fifth_user, text: 'Health is wealth, especially for developers!')
Comment.create(post: eight_post, user: sixth_user, text: 'Any specific tips for long coding sessions?')
Comment.create(post: eight_post, user: first_user, text: 'Taking breaks is also important.')

# Comments for the nineth post
Comment.create(post: nineth_post, user: second_user, text: 'I\'m taking a multivitamin, any other suggestions?')
Comment.create(post: nineth_post, user: third_user, text: 'Vitamin D and Omega-3s are part of my routine.')
Comment.create(post: nineth_post, user: fourth_user, text: 'I\'ve heard good things about magnesium for sleep.')

# Comments for the tenth post
Comment.create(post: tenth_post, user: fifth_user, text: 'Sleep is crucial for cognitive function, totally agree.')
Comment.create(post: tenth_post, user: sixth_user, text: 'I aim for 7-8 hours, how about you?')
Comment.create(post: tenth_post, user: first_user, text: 'Any tips for better sleep hygiene?')

# Comments for the eleventh post
Comment.create(post: eleventh_post, user: second_user, text: 'Standing desks are a game changer.')
Comment.create(post: eleventh_post, user: third_user, text: 'Regular stretching helps a lot.')
Comment.create(post: eleventh_post, user: fourth_user, text: 'It\'s important to keep moving, not just sitting.')

# Comments for the twelth post
Comment.create(post: twelth_post, user: fifth_user, text: 'Meditation has been helpful for my mental health.')
Comment.create(post: twelth_post, user: sixth_user, text: 'Taking time off screens is beneficial.')
Comment.create(post: twelth_post, user: first_user, text: 'Connecting with nature helps me recharge.')

# Comments for the thirteenth post
Comment.create(post: thirteenth_post, user: second_user, text: 'Personal branding is so important these days.')
Comment.create(post: thirteenth_post, user: third_user, text: 'Looking forward to your tips on this!')
Comment.create(post: thirteenth_post, user: fourth_user, text: 'Any platforms you recommend for building a brand?')

# Comments for the fourteenth post
Comment.create(post: fourteenth_post, user: fifth_user, text: 'Social media can be a powerful tool when used right.')
Comment.create(post: fourteenth_post, user: sixth_user, text: 'LinkedIn has been great for professional networking.')
Comment.create(post: fourteenth_post, user: first_user, text: 'Do you use Instagram for personal branding?')

# Comments for the fifteenth post
Comment.create(post: fifteenth_post, user: second_user, text: 'Technology is a boon for self-promotion.')
Comment.create(post: fifteenth_post, user: third_user, text: 'Podcasting is an interesting way to promote.')
Comment.create(post: fifteenth_post, user: fourth_user, text: 'Blogging has helped me reach a wider audience.')

# Comments for the sixteenth post
Comment.create(post: sixteenth_post, user: fifth_user, text: 'Diet plays a huge role in performance, agreed.')
Comment.create(post: sixteenth_post, user: sixth_user, text: 'Meal planning helps me stay on track.')
Comment.create(post: sixteenth_post, user: first_user, text: 'Any specific diet you follow for high performance?')

# Comments for the seventeenth post
Comment.create(post: seventeenth_post, user: second_user, text: 'Obesity prevention is important, thanks for sharing.')
Comment.create(post: seventeenth_post, user: third_user, text: 'Looking forward to the step-by-step guide.')
Comment.create(post: seventeenth_post, user: fourth_user, text: 'Consistency is key in maintaining a healthy weight.')

# Comments for the eighteenth post
Comment.create(post: eighteenth_post, user: fifth_user, text: 'Vegetables are packed with nutrients, good reminder!')
Comment.create(post: eighteenth_post, user: sixth_user, text: 'Any favorite veggie recipes?')
Comment.create(post: eighteenth_post, user: first_user, text: 'Green leafy vegetables are my go-to.')
