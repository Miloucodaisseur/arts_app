Art.destroy_all
Review.destroy_all

whiteside = Art.create({
    name: "Whiteside Mountain",
    description: "lorem ipsum dolor sit amet",
    origin: "United States"
  })

roma = Art.create({
    name: "Roma Architecture",
    description: "lorem ipsum dolor sit amet",
    origin: "Rome, Italy"
  })

  maria =  Art.create({
    name: "Maria Victoria",
    description: "lorem ipsum dolor sit amet",
    origin: "Moskow, Russia"
  })

  tony = Art.create({
    name: "Tony Grove Lake",
    description: "lorem ipsum dolor sit amet",
    origin: "United States"
  })

  Review.create({
      name: "Milou",
      description: "Great painting",
      rating: 5,
      art_id: tony.id
    })
  
