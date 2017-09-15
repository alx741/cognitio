module Lib where

import Graphics.EasyPlot

plotVisualize :: (Fractional a, Enum a, Show a) => [(a, a)] -> [(a, a)] -> IO ()
plotVisualize d1 d2 = do
    _  <- plot X11 $
        [ Data2D [Title "Clase 1", Color Red] [] d1
        , Data2D [Title "Clase 2", Color Blue] [] d2
        ]
    return ()

plotPNG  :: (Fractional a, Enum a, Show a) => FilePath -> [(a, a)] -> [(a, a)] -> IO ()
plotPNG fp d1 d2 = do
    _  <- plot (PNG fp) $
        [ Data2D [Title "Clase 1", Color Red] [] d1
        , Data2D [Title "Clase 2", Color Blue] [] d2
        ]
    return ()
