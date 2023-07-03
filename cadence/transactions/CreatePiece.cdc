import Core from 0xe03daebed8ca0615

transaction {
    prepare(acct: AuthAccount) {
        Core.createRawPiece(_to: /storage/mypiece, _metadata: {"timestamp": "xxx"}, _content: "Some content")
    }
}