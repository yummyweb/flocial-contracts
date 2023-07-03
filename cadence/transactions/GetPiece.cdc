import Core from 0xe03daebed8ca0615

transaction {
    prepare(acct: AuthAccount) {
        if acct.borrow<&Core.RawPiece>(from: /storage/mypiece) != nil {
            log("Piece exists!")
        } else {
            log("Piece does not exist!")
        }
    }
}