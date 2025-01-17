-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Object.ReviewRequest exposing (..)

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

{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) GithubNoFormat.Object.ReviewRequest
databaseId =
      Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


id : SelectionSet GithubNoFormat.ScalarCodecs.Id GithubNoFormat.Object.ReviewRequest
id =
      Object.selectionForField "ScalarCodecs.Id" "id" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Identifies the pull request associated with this review request.
-}
pullRequest : SelectionSet decodesTo GithubNoFormat.Object.PullRequest
 -> SelectionSet decodesTo GithubNoFormat.Object.ReviewRequest
pullRequest object____ =
      Object.selectionForCompositeField "pullRequest" [] (object____) (Basics.identity)


{-| The reviewer that is requested.
-}
requestedReviewer : SelectionSet decodesTo GithubNoFormat.Union.RequestedReviewer
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.ReviewRequest
requestedReviewer object____ =
      Object.selectionForCompositeField "requestedReviewer" [] (object____) (Basics.identity >> Decode.nullable)


{-| Identifies the author associated with this review request.
-}
reviewer : SelectionSet decodesTo GithubNoFormat.Object.User
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.ReviewRequest
reviewer object____ =
      Object.selectionForCompositeField "reviewer" [] (object____) (Basics.identity >> Decode.nullable)
