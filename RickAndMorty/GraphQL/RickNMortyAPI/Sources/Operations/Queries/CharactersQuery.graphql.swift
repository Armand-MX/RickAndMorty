// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class CharactersQuery: GraphQLQuery {
  public static let operationName: String = "Characters"
  public static let document: ApolloAPI.DocumentType = .notPersisted(
    definition: .init(
      #"""
      query Characters {
        characters {
          __typename
          results {
            __typename
            id
            name
            status
            species
            type
            gender
            image
            origin {
              __typename
              id
              name
              type
              dimension
            }
            location {
              __typename
              id
              name
              type
              dimension
            }
            episode {
              __typename
              id
              name
              air_date
              episode
            }
          }
        }
      }
      """#
    ))

  public init() {}

  public struct Data: RickNMortyAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { RickNMortyAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("characters", Characters?.self),
    ] }

    /// Get the list of all characters
    public var characters: Characters? { __data["characters"] }

    /// Characters
    ///
    /// Parent Type: `Characters`
    public struct Characters: RickNMortyAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { RickNMortyAPI.Objects.Characters }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("results", [Result?]?.self),
      ] }

      public var results: [Result?]? { __data["results"] }

      /// Characters.Result
      ///
      /// Parent Type: `Character`
      public struct Result: RickNMortyAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { RickNMortyAPI.Objects.Character }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", RickNMortyAPI.ID?.self),
          .field("name", String?.self),
          .field("status", String?.self),
          .field("species", String?.self),
          .field("type", String?.self),
          .field("gender", String?.self),
          .field("image", String?.self),
          .field("origin", Origin?.self),
          .field("location", Location?.self),
          .field("episode", [Episode?].self),
        ] }

        /// The id of the character.
        public var id: RickNMortyAPI.ID? { __data["id"] }
        /// The name of the character.
        public var name: String? { __data["name"] }
        /// The status of the character ('Alive', 'Dead' or 'unknown').
        public var status: String? { __data["status"] }
        /// The species of the character.
        public var species: String? { __data["species"] }
        /// The type or subspecies of the character.
        public var type: String? { __data["type"] }
        /// The gender of the character ('Female', 'Male', 'Genderless' or 'unknown').
        public var gender: String? { __data["gender"] }
        /// Link to the character's image.
        /// All images are 300x300px and most are medium shots or portraits since they are intended to be used as avatars.
        public var image: String? { __data["image"] }
        /// The character's origin location
        public var origin: Origin? { __data["origin"] }
        /// The character's last known location
        public var location: Location? { __data["location"] }
        /// Episodes in which this character appeared.
        public var episode: [Episode?] { __data["episode"] }

        /// Characters.Result.Origin
        ///
        /// Parent Type: `Location`
        public struct Origin: RickNMortyAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { RickNMortyAPI.Objects.Location }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("id", RickNMortyAPI.ID?.self),
            .field("name", String?.self),
            .field("type", String?.self),
            .field("dimension", String?.self),
          ] }

          /// The id of the location.
          public var id: RickNMortyAPI.ID? { __data["id"] }
          /// The name of the location.
          public var name: String? { __data["name"] }
          /// The type of the location.
          public var type: String? { __data["type"] }
          /// The dimension in which the location is located.
          public var dimension: String? { __data["dimension"] }
        }

        /// Characters.Result.Location
        ///
        /// Parent Type: `Location`
        public struct Location: RickNMortyAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { RickNMortyAPI.Objects.Location }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("id", RickNMortyAPI.ID?.self),
            .field("name", String?.self),
            .field("type", String?.self),
            .field("dimension", String?.self),
          ] }

          /// The id of the location.
          public var id: RickNMortyAPI.ID? { __data["id"] }
          /// The name of the location.
          public var name: String? { __data["name"] }
          /// The type of the location.
          public var type: String? { __data["type"] }
          /// The dimension in which the location is located.
          public var dimension: String? { __data["dimension"] }
        }

        /// Characters.Result.Episode
        ///
        /// Parent Type: `Episode`
        public struct Episode: RickNMortyAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { RickNMortyAPI.Objects.Episode }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("id", RickNMortyAPI.ID?.self),
            .field("name", String?.self),
            .field("air_date", String?.self),
            .field("episode", String?.self),
          ] }

          /// The id of the episode.
          public var id: RickNMortyAPI.ID? { __data["id"] }
          /// The name of the episode.
          public var name: String? { __data["name"] }
          /// The air date of the episode.
          public var air_date: String? { __data["air_date"] }
          /// The code of the episode.
          public var episode: String? { __data["episode"] }
        }
      }
    }
  }
}
