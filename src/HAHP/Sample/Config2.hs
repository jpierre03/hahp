-- | Example for choosing the world's master
module HAHP.Sample.Config2 where

import           Data.Map
import           HAHP.Data
import           HAHP.Data.Core
import           Numeric.LinearAlgebra.HMatrix

sampleAHPConfig2 :: AHPTree
sampleAHPConfig2 = AHPTree
                        "Become the world's master, Pinky and the Brain"
                        ( fromLists [ [ 1.00, 1/4 , 4    ],
                                      [ 4   , 1.00, 9    ],
                                      [ 1/4 , 1/9 , 1.00 ]
                                    ]
                        )
                        Nothing
                        Nothing
                        Nothing
                        [ AHPLeaf "Power" True Nothing
                        , AHPTree
                            "Charisma"
                            ( (3><3) [ 1,   3,   5
                                     , 1/3, 1,   9
                                     , 1/5, 1/9, 1
                                     ]
                            )
                            Nothing
                            Nothing
                            Nothing
                            [ AHPLeaf "Shyness" False Nothing
                            , AHPLeaf "Outfit" True Nothing
                            , AHPLeaf "Size of *" True Nothing
                            ]
                        , AHPLeaf "Capital" True Nothing
                        ]

sampleIndicatorValues2 :: IndicatorValues
sampleIndicatorValues2 = insert "Power" 100
                    . insert "Shyness" 100
                    . insert "Outfit" 100
                    . insert "Size of *" 100
                    . insert "Capital" 100
                        $ empty

sampleIndicatorValues2' :: IndicatorValues
sampleIndicatorValues2' = insert "Power" 1000
                    . insert "Shyness" 100
                    . insert "Outfit" 100
                    . insert "Size of *" 100
                    . insert "Capital" 100
                        $ empty

sampleIndicatorValues2'' :: IndicatorValues
sampleIndicatorValues2'' = insert "Power" 1000
                    . insert "Shyness" 100
                    . insert "Outfit" 100
                    . insert "Size of *" 1000
                    . insert "Capital" 100
                        $ empty

sampleIndicatorValues2''' :: IndicatorValues
sampleIndicatorValues2''' = insert "Power" 1000
                    . insert "Shyness" 1000
                    . insert "Outfit" 100
                    . insert "Size of *" 100
                    . insert "Capital" 100
                        $ empty

alt2John  = Alternative "John" sampleIndicatorValues2
alt2David = Alternative "David" sampleIndicatorValues2'
alt2Marc  = Alternative "Marc" sampleIndicatorValues2''
alt2Steve = Alternative "Steve" sampleIndicatorValues2'''

sampleAlternatives2 ::  [Alternative]
sampleAlternatives2 =   [ alt2John
                        , alt2David
                        , alt2Marc
                        , alt2Steve
                        ]
