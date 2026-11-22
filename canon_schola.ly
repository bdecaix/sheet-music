

\version "2.26.0"

\language italiano

\header {
  title = "Canon"
  composer = "Schola Vaucresson"
  %poet = ""
  tagline = ##f
}

global = {
  \time 4/4
}

melodie =   \relative do' {
  % Mesure 1 : 7 + 7 + 2 = 16 doubles-croches (4 temps)
  do8 do16 do8 do re re16 re8 sol sol~ |
  
  % Mesure 2 : 16 doubles-croches (4 temps)
  sol1 |
  
  % Mesure 3 : 7 + 7 + 2 = 16 doubles-croches (4 temps)
  sol8 sol16 sol8 sol fa fa16 fa8 fa mi |
  
  % Mesure 4 : 5 + 7 + 4 = 16 doubles-croches (4 temps)
  mi16 mi8 mi re re16 re8 re do do16 do16~ |
  
  % Mesure 5 : 3 + 7 + 6 = 16 doubles-croches (4 temps)
  do8 do16 re8 re16 do8 si do4.~ |
  
  % Mesure 6 : 16 doubles-croches (4 temps)
  do1 |
  }

premiereVoix = {
  \voiceOne
  \melodie
  \melodie
  \melodie
}

deuxiemeVoix = {
  \voiceTwo
  R1 R1 % Décalage d'une mesure (changez en R1*2 pour 2 mesures)
  \melodie
  \melodie
  \melodie
}

troisiemeVoix = {
  \voiceThree
  R1 R1 R1 R1 % Décalage d'une mesure (changez en R1*2 pour 2 mesures)
  \melodie
  \melodie
  \melodie
}

quatriemeVoix = {
  \voiceFour
  R2. R2. R2. R2. R2. r4  % Décalage d'une mesure (changez en R1*2 pour 2 mesures)
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
%{    \new Staff <<
      \new Voice = "voix4" <<
        \global
        \quatriemeVoix
      >>
    >>%}
  >>

  \layout {}
  \midi {}
}
