

\version "2.26.0"

\language italiano

\header {
  title = "Canon"
  composer = "Schola Vaucresson"
  %poet = ""
  tagline = ##f
}

global = {
  \time 3/4
}

melodie =   \relative do' {
    do8 do16 do8 do re re16 re8 sol sol4.~ sol8
    sol8 sol16 sol8 sol fa fa16 fa8 fa mi mi16 mi8 mi
    re re16 re8 re do do16 do8 do re re16 do8 si do4.~ do8
  }

premiereVoix = {
  \voiceOne
  \melodie
  \melodie
  \melodie
}

deuxiemeVoix = {
  \voiceTwo
  R2. r8 r2 % Décalage d'une mesure (changez en R1*2 pour 2 mesures)
  \melodie
  \melodie
  \melodie
}

troisiemeVoix = {
  \voiceThree
  R2. R2. R2. r2 % Décalage d'une mesure (changez en R1*2 pour 2 mesures)
  \melodie
  \melodie
  \melodie
}

quatriemeVoix = {
  \voiceFour
  R2. R2. R2. R2. R2. r4.  % Décalage d'une mesure (changez en R1*2 pour 2 mesures)
  \melodie
  \melodie
  \melodie
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
