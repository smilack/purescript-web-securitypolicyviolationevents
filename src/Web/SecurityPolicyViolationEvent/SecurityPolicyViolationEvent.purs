module Web.SecurityPolicyViolationEvent.SecurityPolicyViolationEvent
  ( SecurityPolicyViolationEvent
  , fromEvent
  , toEvent
  ) where

import Data.Maybe (Maybe)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Event (Event)
import Web.Internal.FFI (unsafeReadProtoTagged)

foreign import data SecurityPolicyViolationEvent :: Type

fromEvent :: Event -> Maybe SecurityPolicyViolationEvent
fromEvent = unsafeReadProtoTagged "SecurityPolicyViolationEvent"

toEvent :: SecurityPolicyViolationEvent -> Event
toEvent = unsafeCoerce
