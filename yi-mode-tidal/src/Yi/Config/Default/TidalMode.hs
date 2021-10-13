module Yi.Config.Default.TidalMode (configureTidalMode) where

import Yi.Config.Simple    (ConfigM, addMode)
import Yi.Mode.Tidal

configureTidalMode :: ConfigM ()
configureTidalMode = do
  addMode preciseMode
  addMode cleverMode
