module Web.SecurityPolicyViolationEvent.EventTypes
  ( securitypolicyviolation
  ) where

import Web.Event.Event (EventType(..))

securitypolicyviolation :: EventType
securitypolicyviolation = EventType "securitypolicyviolation"

