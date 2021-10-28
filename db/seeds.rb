# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# airlines seeds
airlines = Airline.create(
  [
    {
      name: 'United Airlines',
      image_url: 'https://static.politico.com/dims4/default/ffd416d/2147483647/resize/1160x%3E/quality/90/?url=https%3A%2F%2Fstatic.politico.com%2F12%2F3f%2F3fbf2a5d42fabece04d04cc1f602%2F20211026-southwest-airlines-ap-773.jpg'
    },
    {
      name: 'Southwest',
      image_url: 'https://static.politico.com/dims4/default/ffd416d/2147483647/resize/1160x%3E/quality/90/?url=https%3A%2F%2Fstatic.politico.com%2F12%2F3f%2F3fbf2a5d42fabece04d04cc1f602%2F20211026-southwest-airlines-ap-773.jpg'
    },
    {
      name: 'Delta',
      image_url: 'https://static.politico.com/dims4/default/ffd416d/2147483647/resize/1160x%3E/quality/90/?url=https%3A%2F%2Fstatic.politico.com%2F12%2F3f%2F3fbf2a5d42fabece04d04cc1f602%2F20211026-southwest-airlines-ap-773.jpg'
    },
    {
      name: 'Alaska Airlines',
      image_url: 'https://static.politico.com/dims4/default/ffd416d/2147483647/resize/1160x%3E/quality/90/?url=https%3A%2F%2Fstatic.politico.com%2F12%2F3f%2F3fbf2a5d42fabece04d04cc1f602%2F20211026-southwest-airlines-ap-773.jpg'
    },
    {
      name: 'JetBlue',
      image_url: 'https://static.politico.com/dims4/default/ffd416d/2147483647/resize/1160x%3E/quality/90/?url=https%3A%2F%2Fstatic.politico.com%2F12%2F3f%2F3fbf2a5d42fabece04d04cc1f602%2F20211026-southwest-airlines-ap-773.jpg'
    },
    {
      name: 'American Airlines',
      image_url: 'https://static.politico.com/dims4/default/ffd416d/2147483647/resize/1160x%3E/quality/90/?url=https%3A%2F%2Fstatic.politico.com%2F12%2F3f%2F3fbf2a5d42fabece04d04cc1f602%2F20211026-southwest-airlines-ap-773.jpg'
    }
  ]
)

# reviews seeds
reviews = Review.create(
  [
    {
      title: 'Great Airline',
      description: 'I had a great time.',
      score: 5,
      airline: airlines.first
    },
    {
      title: 'Bad Airline',
      description: 'I had a bad time',
      score: 1,
      airline: airlines.first
    }
  ]
)
