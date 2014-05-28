module Paths_hsgnutls (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch


version :: Version
version = Version {versionBranch = [0,2,3,2], versionTags = []}
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/tatsuya/.cabal/bin"
libdir     = "/home/tatsuya/.cabal/lib/i386-linux-ghc-7.6.3/hsgnutls-0.2.3.2"
datadir    = "/home/tatsuya/.cabal/share/i386-linux-ghc-7.6.3/hsgnutls-0.2.3.2"
libexecdir = "/home/tatsuya/.cabal/libexec"
sysconfdir = "/home/tatsuya/.cabal/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "hsgnutls_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "hsgnutls_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "hsgnutls_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "hsgnutls_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "hsgnutls_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
