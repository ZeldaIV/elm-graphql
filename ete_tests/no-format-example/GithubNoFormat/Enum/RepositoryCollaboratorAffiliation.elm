-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Enum.RepositoryCollaboratorAffiliation exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The affiliation type between collaborator and repository.

  - All - All collaborators of the repository.
  - Outside - All outside collaborators of an organization-owned repository.

-}
type RepositoryCollaboratorAffiliation
    = All
    | Outside
list : List RepositoryCollaboratorAffiliation
list =
    [All, Outside]
decoder : Decoder RepositoryCollaboratorAffiliation
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "ALL" ->
                        Decode.succeed All

                    "OUTSIDE" ->
                        Decode.succeed Outside

                    _ ->
                        Decode.fail ("Invalid RepositoryCollaboratorAffiliation type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
        )
        

{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : RepositoryCollaboratorAffiliation -> String
toString enum =
    case enum of
        All ->
                "ALL"


        Outside ->
                "OUTSIDE"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe RepositoryCollaboratorAffiliation
fromString enumString =
    case enumString of
        "ALL" ->
                Just All


        "OUTSIDE" ->
                Just Outside

        _ ->
                Nothing