module Github.Object.BaseRefForcePushedEvent exposing (..)

import Github.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.BaseRefForcePushedEvent
selection constructor =
    Object.object constructor


actor : SelectionSet actor Github.Object.Actor -> FieldDecoder (Maybe actor) Github.Object.BaseRefForcePushedEvent
actor object =
    Object.selectionFieldDecoder "actor" [] object (identity >> Decode.maybe)


afterCommit : SelectionSet afterCommit Github.Object.Commit -> FieldDecoder (Maybe afterCommit) Github.Object.BaseRefForcePushedEvent
afterCommit object =
    Object.selectionFieldDecoder "afterCommit" [] object (identity >> Decode.maybe)


beforeCommit : SelectionSet beforeCommit Github.Object.Commit -> FieldDecoder (Maybe beforeCommit) Github.Object.BaseRefForcePushedEvent
beforeCommit object =
    Object.selectionFieldDecoder "beforeCommit" [] object (identity >> Decode.maybe)


createdAt : FieldDecoder String Github.Object.BaseRefForcePushedEvent
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


id : FieldDecoder String Github.Object.BaseRefForcePushedEvent
id =
    Object.fieldDecoder "id" [] Decode.string


pullRequest : SelectionSet pullRequest Github.Object.PullRequest -> FieldDecoder pullRequest Github.Object.BaseRefForcePushedEvent
pullRequest object =
    Object.selectionFieldDecoder "pullRequest" [] object identity


ref : SelectionSet ref Github.Object.Ref -> FieldDecoder (Maybe ref) Github.Object.BaseRefForcePushedEvent
ref object =
    Object.selectionFieldDecoder "ref" [] object (identity >> Decode.maybe)