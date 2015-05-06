data = [
  {
    first_name: "Jesse",
    last_name: "Wolgamott",
    address_line_1: "103 Montrose",
    city: "Houston",
    state: "TX",
    zip: "77006",
    country: "USA"
  },
  {
    first_name: "Sarah",
    last_name: "Knight",
    address_line_1: "303 Greenpark",
    city: "Houston",
    state: "TX",
    zip: "77079",
    country: "USA"
  },
  {
    first_name: "Fred",
    last_name: "Flintstone",
    address_line_1: "4567 Ruby Way",
    city: "Beverly Hills",
    state: "CA",
    zip: "90210",
    country: "USA"
  },
  {
    first_name: "Tom",
    last_name: "Europe",
    address_line_1: "The Eiffel Tower",
    city: "Paris",
    country: "France"
  }


]
class Contact
  attr_accessor :first_name, :last_name, :address_line_1,
                :city, :state, :zip, :country

  def full_name
    [last_name, first_name].join(", ")
  end

  def city_state_zip
    if country == "USA"
      "#{city}, #{state}   #{zip}"
    else
      "#{city}\n#{country}"
    end
  end

  def address
    [full_name, address_line_1, city_state_zip].join("\n")
  end
end

contacts = data.map do |hash|
  contact = Contact.new # instantiation, create a new object of type Class
  contact.first_name = hash[:first_name]
  contact.last_name = hash[:last_name]
  contact.address_line_1 = hash[:address_line_1]
  contact.city = hash[:city]
  contact.state = hash[:state]
  contact.zip = hash[:zip]
  contact.country = hash[:country]
  contact
end


# jesse = Contact.new # instantiation, create a new object of type Class
# jesse.first_name = "Jesse"
# jesse.last_name = "Wolgamott"
# jesse.address_line_1 = "103 Montrose"
# jesse.city = "Houston"
# jesse.state = "TX"
# jesse.zip = "77006"
# jesse.country = "USA"


contacts.each do |contact|
  puts contact.address
  puts
end
