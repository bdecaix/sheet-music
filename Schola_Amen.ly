

\version "2.26.0"

\language italiano

\header {
  title = "Amen"
  composer = "H.C."
  %poet = ""
  tagline = ##f
}

global = {
  \time 4/4
}

soprane =   \relative do' {
  sol'2 sol mi mi re4 (fa) mi mi mi1
  }

alto = \relative do' {
  mi2 re do si la4 re do4 si do1
  }

tenor =   \relative do' {
  do2 si la sol fa4 la sol4 sol sol1
  }

basse = \relative do' {
  do2 sol fa4 mi la2 re4 re8 do la4 do mi1
  }

premiereVoix = {
  \voiceOne
  \soprane
}

deuxiemeVoix = {
  \voiceTwo
  \alto
}

troisiemeVoix = {
  \voiceThree
  \tenor
}

quatriemeVoix = {
  \voiceFour
  \basse
}


\score {
\new ChoirStaff <<
    \new Staff <<
      \new Voice = "voix1" <<
        \global
        \premiereVoix
      >>
    >>
   \new Staff <<
      \new Voice = "voix2" <<
        \global
        \deuxiemeVoix
      >>
    >>
     \new Staff <<
      \new Voice = "voix3" <<
        \global
        \troisiemeVoix
      >>
    >>
   \new Staff <<
      \new Voice = "voix4" <<
        \global
        \quatriemeVoix
      >>
    >>
  >>

  \layout {}
  \midi {}
}
