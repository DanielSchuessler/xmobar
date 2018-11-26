{-# LANGUAGE CPP #-}

-----------------------------------------------------------------------------
-- |
-- Module      :  Xmobar
-- Copyright   :  (c) 2011, 2012, 2013, 2014, 2015, 2017, 2018 Jose Antonio Ortega Ruiz
--                (c) 2007 Andrea Rossato
-- License     :  BSD-style (see LICENSE)
--
-- Maintainer  :  Jose A. Ortega Ruiz <jao@gnu.org>
-- Stability   :  unstable
-- Portability :  unportable
--
-- A status bar for the Xmonad Window Manager
--
-----------------------------------------------------------------------------

module Xmobar (xmobar
              , defaultConfig
              , getXdgConfigFile
              , Runnable (..)
              , Exec (..)
              , module Xmobar.Config.Types
              , module Xmobar.Config.Parse
              , module Xmobar.Plugins.BufferedPipeReader
              , module Xmobar.Plugins.CommandReader
              , module Xmobar.Plugins.Date
#ifdef DATEZONE
              , module Xmobar.Plugins.DateZone
#endif
              , module Xmobar.Plugins.EWMH
              , module Xmobar.Plugins.Kbd
              , module Xmobar.Plugins.Locks
#ifdef INOTIFY
              , module Xmobar.Plugins.Mail
              , module Xmobar.Plugins.MBox
#endif
              , module Xmobar.Plugins.Monitors
              , module Xmobar.Plugins.PipeReader
              , module Xmobar.Plugins.StdinReader
              , module Xmobar.Plugins.XMonadLog
              ) where

import Xmobar.Run.Runnable
import Xmobar.Run.Commands
import Xmobar.Config.Types
import Xmobar.Config.Parse
import Xmobar.Plugins.BufferedPipeReader
import Xmobar.Plugins.CommandReader
import Xmobar.Plugins.Date
#ifdef DATEZONE
import Xmobar.Plugins.DateZone
#endif
import Xmobar.Plugins.EWMH
import Xmobar.Plugins.Kbd
import Xmobar.Plugins.Locks
#ifdef INOTIFY
import Xmobar.Plugins.Mail
import Xmobar.Plugins.MBox
#endif
import Xmobar.Plugins.Monitors
import Xmobar.Plugins.PipeReader
import Xmobar.Plugins.StdinReader
import Xmobar.Plugins.XMonadLog

import Xmobar.App.Main(xmobar)
import Xmobar.App.Config(defaultConfig, getXdgConfigFile)
