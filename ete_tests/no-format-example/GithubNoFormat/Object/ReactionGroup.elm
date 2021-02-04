-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Object.ReactionGroup exposing (..)

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
import GithubNoFormat.Enum.ReactionContent
{-| Identifies the emoji reaction.
-}
content : SelectionSet GithubNoFormat.Enum.ReactionContent.ReactionContent GithubNoFormat.Object.ReactionGroup
content =
      Object.selectionForField "Enum.ReactionContent.ReactionContent" "content" [] (GithubNoFormat.Enum.ReactionContent.decoder)


{-| Identifies when the reaction was created.
-}
createdAt : SelectionSet (Maybe GithubNoFormat.ScalarCodecs.DateTime) GithubNoFormat.Object.ReactionGroup
createdAt =
      Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "createdAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| The subject that was reacted to.
-}
subject : SelectionSet decodesTo GithubNoFormat.Interface.Reactable
 -> SelectionSet decodesTo GithubNoFormat.Object.ReactionGroup
subject object_ =
      Object.selectionForCompositeField "subject" [] (object_) (identity)


type alias UsersOptionalArguments = { first : OptionalArgument Int
 , after : OptionalArgument String
 , last : OptionalArgument Int
 , before : OptionalArgument String }

{-| Users who have reacted to the reaction subject with the emotion represented by this reaction group

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
users : (UsersOptionalArguments -> UsersOptionalArguments)
 -> SelectionSet decodesTo GithubNoFormat.Object.ReactingUserConnection
 -> SelectionSet decodesTo GithubNoFormat.Object.ReactionGroup
users fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "last" filledInOptionals.last (Encode.int), Argument.optional "before" filledInOptionals.before (Encode.string) ]
                |> List.filterMap identity
    in
      Object.selectionForCompositeField "users" optionalArgs (object_) (identity)


{-| Whether or not the authenticated user has left a reaction on the subject.
-}
viewerHasReacted : SelectionSet Bool GithubNoFormat.Object.ReactionGroup
viewerHasReacted =
      Object.selectionForField "Bool" "viewerHasReacted" [] (Decode.bool)