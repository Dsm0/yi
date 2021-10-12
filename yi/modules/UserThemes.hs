module UserThemes (myTheme) where

import Yi.Style.Library 
import Yi.Style

import Data.Prototype

-- | Abstract theme that provides useful defaults.

-- | A Theme inspired by the darkblue colorscheme of Vim.
myTheme :: Theme
myTheme = darkTheme

darkTheme :: Theme
darkTheme = Proto $ const UIStyle { 
    modelineAttributes = emptyAttributes { foreground = white, background = black }
  , modelineFocusStyle = withBg brightwhite

  , tabBarAttributes   = emptyAttributes { foreground = black , background = brightwhite }
  , tabInFocusStyle    = withFg grey `mappend` withBg cyan
  , tabNotFocusedStyle = withFg lightGrey `mappend` withBg cyan

  , baseAttributes     = emptyAttributes { foreground = white,    background = black }

  , selectedStyle      = withFg white `mappend` withBg yellow
  , eofStyle           = withFg red
  , hintStyle          = withBg darkblue
  , strongHintStyle    = withBg blue

  , errorStyle         = withBg red

  , commentStyle       = withFg darkred
  , numberStyle        = withFg white
  , keywordStyle       = withFg brown
  , stringStyle        = withFg purple
  , variableStyle      = withFg cyan
  , operatorStyle      = withFg brown
  }