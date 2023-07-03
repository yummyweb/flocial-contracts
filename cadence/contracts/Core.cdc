pub contract Core {
    pub struct RawPiece {
        pub var metadata: {String:String}
        pub var content: String

        init(_metadata: {String:String}, _content: String) {
            self.metadata = _metadata
            self.content = _content
        }
    }

    pub struct User {
        pub var username: String
        pub var fullName: String
        pub var email: String
        pub var proxy: String
        pub var isPublic: Bool

        init(_username: String, _fullName: String, _email: String, _proxy: String) {
            self.isPublic = false
            self.username = _username
            self.fullName = _fullName
            self.email = _email
            self.proxy = _proxy
        }

        pub fun changeVisibility(_visibility: Bool) {
            self.isPublic = _visibility
        }
    }

    pub let users: {Address:Core.User}

    init() {
        self.users = {}
    }

    // USER OPERATIONS
    //
    pub fun addUser(_username: String, _fullName: String, _email: String) {
        let u: Core.User = User(_username: _username, _fullName: _fullName, _email: _email, _proxy: "flocial-default")
        self.users[self.account.address] = u
    }

    pub fun resolveUser(_user: Address): User? {
        if self.users[_user]?.isPublic ?? false {
            return self.users[_user]
        } else {
            return nil
        }
    }

    pub fun mutateUserVisibility(_visibility: Bool) {
        self.users[self.account.address]?.changeVisibility(_visibility: _visibility)
    }

    // PIECE OPERATIONS
    //
    pub fun createRawPiece(_to: StoragePath, _metadata: {String:String}, _content: String) {
        let piece: Core.RawPiece = RawPiece(_metadata: _metadata, _content: _content)
        self.users[self.account.address]
    }
}