import Core from 0xe03daebed8ca0615

pub fun main(): Core.User? {
    // Add a user
    Core.addUser(_username: "john.01", _fullName: "John Briggs", _email: "john@example.com")
    
    // Change visibility
    Core.mutateUserVisibility(_visibility: true)

    // Resolve the user
    return Core.resolveUser(_user: 0xe03daebed8ca0615)
}