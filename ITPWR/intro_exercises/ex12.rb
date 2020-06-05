contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"] = [:email, :address, :phone].zip(contact_data.first).to_h
contacts["Sally Johnson"] = [:email, :address, :phone].zip(contact_data.last).to_h

# joe's email
contacts["Joe Smith"][:email]

# sally's number
contacts["Sally Johnson"][:phone]