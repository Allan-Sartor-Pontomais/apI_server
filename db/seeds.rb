# SEEDS CALLS
2.times do
  calls = Call.create([
    { priority_level: "Alto", 
      anydesk_number: "123456789", 
      description: "Meu pc não funciona",
      image_url: "img.jpeg",
      call_status: false
    },
  ])
  
  # Character.create(name: "Luke", movie: movies.first)
end

