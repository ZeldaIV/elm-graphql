-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Object.ReactingUserEdge exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.SelectionSet exposing (SelectionSet)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import GithubNoFormat.Object
import GithubNoFormat.Interface
import GithubNoFormat.Union
import GithubNoFormat.Scalar
import GithubNoFormat.InputObject
import GithubNoFormat.ScalarCodecs
import Json.Decode as Decode
import Graphql.Internal.Encode as Encode exposing (Value)

cursor : SelectionSet String GithubNoFormat.Object.ReactingUserEdge
cursor =
      Object.selectionForField "String" "cursor" [] (Decode.string)


node : SelectionSet decodesTo GithubNoFormat.Object.User
 -> SelectionSet decodesTo GithubNoFormat.Object.ReactingUserEdge
node object_ =
      Object.selectionForCompositeField "node" [] (object_) (identity)


{-| The moment when the user made the reaction.
-}
reactedAt : SelectionSet GithubNoFormat.ScalarCodecs.DateTime GithubNoFormat.Object.ReactingUserEdge
reactedAt =
      Object.selectionForField "ScalarCodecs.DateTime" "reactedAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)