-- | Implementation of SecurityPolicyViolationEvent interface from
-- | [Content Security Policy Level 3](https://www.w3.org/TR/CSP3/)
module Web.SecurityPolicyViolationEvent.SecurityPolicyViolationEvent
  ( SecurityPolicyViolationEvent
  , blockedURI
  , columnNumber
  -- , disposition
  , documentURI
  , effectiveDirective
  , fromEvent
  , lineNumber
  , originalPolicy
  , referrer
  , sample
  , sourceFile
  , statusCode
  , toEvent
  , violatedDirective
  ) where

import Data.Maybe (Maybe)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Event (Event)
import Web.Internal.FFI (unsafeReadProtoTagged)

foreign import data SecurityPolicyViolationEvent :: Type

data SecurityPolicyViolationEventDisposition
  = Enforce
  | Report

fromEvent :: Event -> Maybe SecurityPolicyViolationEvent
fromEvent = unsafeReadProtoTagged "SecurityPolicyViolationEvent"

toEvent :: SecurityPolicyViolationEvent -> Event
toEvent = unsafeCoerce

foreign import documentURI :: SecurityPolicyViolationEvent -> String
foreign import referrer :: SecurityPolicyViolationEvent -> String
foreign import blockedURI :: SecurityPolicyViolationEvent -> String
foreign import effectiveDirective :: SecurityPolicyViolationEvent -> String
foreign import violatedDirective :: SecurityPolicyViolationEvent -> String
foreign import originalPolicy :: SecurityPolicyViolationEvent -> String
foreign import sourceFile :: SecurityPolicyViolationEvent -> String
foreign import sample :: SecurityPolicyViolationEvent -> String
-- disposition SecurityPolicyViolationEventDisposition
foreign import statusCode :: SecurityPolicyViolationEvent -> Int
foreign import lineNumber :: SecurityPolicyViolationEvent -> Int
foreign import columnNumber :: SecurityPolicyViolationEvent -> Int
