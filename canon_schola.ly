

\version "2.26.0"

\language italiano

\header {
  title = "Canon"
  composer = "Schola Vaucresson"
}

global = {
  \time 2/4
}



\score {
  \relative do' { \time 3/4
    do8 do16 do8 do
    re re16 re8 sol sol2
    sol8 sol16 sol8 sol
    fa fa16 fa8 fa
    mi mi16 mi8 mi
    re re16 re8 re
    do do16 do8 do re re16 do8 si do2
  }

  \relative do' { \time 3/4
    do8 do16 do8 do
    re re16 re8 sol sol2
    sol8 sol16 sol8 sol
    fa fa16 fa8 fa
    mi mi16 mi8 mi
    re re16 re8 re
    do do16 do8 do re re16 do8 si do2
  }

  \layout {}
  \midi {}
}