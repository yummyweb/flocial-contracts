# Flocial Litepaper

Flocial is a decentralized social networking protocol (DSNP) built on Flow.

## Terms

- Client: A Flocial application or a dApp that uses the Flocial protocol.

- User: An individual who has registered via `addUser` in the protocol.

## Goal

The goal of Flocial is to provide an extensible and integrateable social identity infrastructure on Flow. By utilizing the power of Flow, we can establish a shared social graph without the need of a centralized authority. Think Twitter or Facebook but completely decentralized. Such a solution will provide open, decentralized data on the blockchain while maintaining privacy and complete control of user data.

## Components

- Users: A `User` represents a social identity, which has the following fields: `username`, `fullName`, `email`, `proxy` and `isPublic`. While most DSNPs aim at complete anonymity, for most real-world use-cases, publicly available information such as these fields as required.

- Pieces: A `Piece` is a resources which is comparable to Posts in Facebook or Tweets in Twitter. It has the following fields: `metadata` and `content`. The concept of pieces is necessary for clients to be able to build scalable, customizable applications on top of Flocial. Pieces make Flocial extensible and integrateable.