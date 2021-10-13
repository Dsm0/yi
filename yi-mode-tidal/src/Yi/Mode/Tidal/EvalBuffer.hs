module Yi.Mode.Tidal.EvalBuffer (parse) where

import           Control.Monad                    (void)
import qualified Data.Text                        as T (pack)
import qualified Data.Attoparsec.Text             as P (char,many1,satisfy)
import           Yi.Command                       (interactiveRun)
import           Yi.Keymap                        (Action (YiA))
import           Yi.Keymap.Vim.Common             (EventString)
import qualified Yi.Keymap.Vim.Ex.Commands.Common as Common (commandArgs, impureExCommand, parse)
import           Yi.Keymap.Vim.Ex.Types           (ExCommand (cmdAction, cmdShow))

parse :: EventString -> Maybe ExCommand
parse = Common.parse $ do
    void $ P.char '!'
    cmd <- T.pack <$> P.many1 (P.satisfy  (/=' '))
    args <- Common.commandArgs
    return $ Common.impureExCommand {
        cmdShow = T.pack "!"
      , cmdAction = YiA $ interactiveRun cmd args (const $ return ())
      }

