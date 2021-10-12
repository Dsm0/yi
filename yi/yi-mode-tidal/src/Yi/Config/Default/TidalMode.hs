module Yi.Config.Default.TidalMode (configureTidalMode) where

import Yi.Config.Simple    (ConfigM, addMode)
import Yi.Mode.Tidal

configureTidalMode :: ConfigM ()
configureTidalMode = do
  addMode literateMode
  addMode preciseMode
  addMode cleverMode
