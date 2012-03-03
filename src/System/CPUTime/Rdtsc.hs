{-# LANGUAGE ForeignFunctionInterface #-}

module System.CPUTime.Rdtsc (rdtsc) where

import Data.Word (Word64)

------------------------------------------------------------------------

-- | Reads the Time Stamp Counter (TSC) on x86 and x64 systems.
foreign import ccall unsafe "rdtsc" rdtsc :: IO Word64
