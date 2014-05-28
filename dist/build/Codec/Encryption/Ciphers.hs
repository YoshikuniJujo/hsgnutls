{-# LINE 1 "Codec/Encryption/Ciphers.hsc" #-}
module Codec.Encryption.Ciphers where
{-# LINE 2 "Codec/Encryption/Ciphers.hsc" #-}


{-# LINE 4 "Codec/Encryption/Ciphers.hsc" #-}

import Foreign.C.Types

class CipherType a where
	cipherTypeToC :: a -> CInt

class CipherMode a where
	cipherModeToC :: a -> CInt

data CipherIDEA = CipherIDEA deriving Show
data Cipher3DES = Cipher3DES deriving Show
data CipherCast5 = CipherCast5 deriving Show
data CipherBlowfish = CipherBlowfish deriving Show
data CipherAES = CipherAES deriving Show
data CipherAES128 = CipherAES128 deriving Show
data CipherAES192 = CipherAES192 deriving Show
data CipherAES256 = CipherAES256 deriving Show
data CipherRIJNDAEL = CipherRIJDNDAEL deriving Show
data CipherRIJNDAEL128 = CipherRIJNDAEL128 deriving Show
data CipherRIJNDAEL192 = CipherRIJNDAEL192 deriving Show
data CipherRIJNDAEL256 = CipherRIJNDAEL256 deriving Show
data CipherTwofish = CipherTwofish deriving Show
data CipherTwofish128 = CipherTwofish128 deriving Show
data CipherArcfour = CipherArcfour deriving Show
data CipherDES = CipherDES deriving Show

instance CipherType CipherIDEA where cipherTypeToC _ = 1
{-# LINE 31 "Codec/Encryption/Ciphers.hsc" #-}
instance CipherType Cipher3DES where cipherTypeToC _ = 2
{-# LINE 32 "Codec/Encryption/Ciphers.hsc" #-}
instance CipherType CipherCast5 where cipherTypeToC _ = 3
{-# LINE 33 "Codec/Encryption/Ciphers.hsc" #-}
instance CipherType CipherBlowfish where cipherTypeToC _ = 4
{-# LINE 34 "Codec/Encryption/Ciphers.hsc" #-}
instance CipherType CipherAES where cipherTypeToC _ = 7
{-# LINE 35 "Codec/Encryption/Ciphers.hsc" #-}
instance CipherType CipherAES128 where cipherTypeToC _ = 7
{-# LINE 36 "Codec/Encryption/Ciphers.hsc" #-}
instance CipherType CipherAES192 where cipherTypeToC _ = 8
{-# LINE 37 "Codec/Encryption/Ciphers.hsc" #-}
instance CipherType CipherAES256 where cipherTypeToC _ = 9
{-# LINE 38 "Codec/Encryption/Ciphers.hsc" #-}
instance CipherType CipherRIJNDAEL where cipherTypeToC _ = 7
{-# LINE 39 "Codec/Encryption/Ciphers.hsc" #-}
instance CipherType CipherRIJNDAEL128 where cipherTypeToC _ = 7
{-# LINE 40 "Codec/Encryption/Ciphers.hsc" #-}
instance CipherType CipherRIJNDAEL192 where cipherTypeToC _ = 8
{-# LINE 41 "Codec/Encryption/Ciphers.hsc" #-}
instance CipherType CipherRIJNDAEL256 where cipherTypeToC _ = 9
{-# LINE 42 "Codec/Encryption/Ciphers.hsc" #-}
instance CipherType CipherTwofish where cipherTypeToC _ = 10
{-# LINE 43 "Codec/Encryption/Ciphers.hsc" #-}
instance CipherType CipherTwofish128 where cipherTypeToC _ = 303
{-# LINE 44 "Codec/Encryption/Ciphers.hsc" #-}
instance CipherType CipherArcfour where cipherTypeToC _ = 301
{-# LINE 45 "Codec/Encryption/Ciphers.hsc" #-}
instance CipherType CipherDES where cipherTypeToC _ = 302
{-# LINE 46 "Codec/Encryption/Ciphers.hsc" #-}

{-data CipherMode
	= ModeNone
	| ModeECB
	| ModeCFB
	| ModeCBC
	| ModeStream
	| ModeOFB
	| ModeCTR
	deriving (Show,Eq)-}

data ModeNone = ModeNone deriving Show
data ModeECB = ModeECB deriving Show
data ModeCFB = ModeCFB deriving Show
data ModeCBC = ModeCBC deriving Show
data ModeStream = ModeStream deriving Show
data ModeOFB = ModeOFB deriving Show
data ModeCTR = ModeCTR deriving Show

instance CipherMode ModeNone where cipherModeToC _ = 0
{-# LINE 66 "Codec/Encryption/Ciphers.hsc" #-}
instance CipherMode ModeECB where cipherModeToC _ = 1
{-# LINE 67 "Codec/Encryption/Ciphers.hsc" #-}
instance CipherMode ModeCFB where cipherModeToC _ = 2
{-# LINE 68 "Codec/Encryption/Ciphers.hsc" #-}
instance CipherMode ModeCBC where cipherModeToC _ = 3
{-# LINE 69 "Codec/Encryption/Ciphers.hsc" #-}
instance CipherMode ModeStream where cipherModeToC _ = 4
{-# LINE 70 "Codec/Encryption/Ciphers.hsc" #-}
instance CipherMode ModeOFB where cipherModeToC _ = 5
{-# LINE 71 "Codec/Encryption/Ciphers.hsc" #-}
instance CipherMode ModeCTR where cipherModeToC _ = 6
{-# LINE 72 "Codec/Encryption/Ciphers.hsc" #-}

data CipherFlag
	= Secure
	| EnableSync
	| CBC_CTS
	| CBC_MAC
	deriving (Show,Eq)

flagToC :: CipherFlag -> CUInt
flagToC Secure = 1
{-# LINE 82 "Codec/Encryption/Ciphers.hsc" #-}
flagToC EnableSync = 2
{-# LINE 83 "Codec/Encryption/Ciphers.hsc" #-}
flagToC CBC_CTS = 4
{-# LINE 84 "Codec/Encryption/Ciphers.hsc" #-}
flagToC CBC_MAC = 8
{-# LINE 85 "Codec/Encryption/Ciphers.hsc" #-}
