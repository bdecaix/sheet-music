\version "2.26.0"

\language "italiano"

\header {
  title = "Vous êtes dans mon âme"
  subtitle = ""
  composer = "Jeanne Barbey"
  %poet = ""
  tagline = ##f
}

\paper {
  %annotate-spacing = ##t %Affichage des distances
  system-system-spacing = #'((basic-distance . 15) (padding . 10))
  %system-system-spacing.basic-distance = #0
  top-margin = 3
  line-width = 200
  
  score-system-spacing =
    #'((padding . 1)
       (basic-distance . 100)
       (minimum-distance . 10)
       (stretchability . 12))
  
}


\layout {
  indent = 0\cm
  #(layout-set-staff-size 18)
%  #(set-global-staff-size 10)
%  \context {
%    \StaffGroup
%    \override StaffGrouper.staff-staff-spacing.basic-distance = #100
%  }
  \context {
    \Staff
%    \RemoveAllEmptyStaves
%    \consists Grid_point_engraver %% active les guides
%    gridInterval = #(ly:make-moment 3/8)
  }
  \context {
    \Score
%    \consists Grid_line_span_engraver
     %% centre les lignes guides horizontalement sous les notes
  }
%  \context {
%    \Voice
%    \override TextScript.padding = #1
%    \override Glissando.thickness = #3
%  }
}

global = {
  \time 6/8
  \key sol \major
  \tempo 4=80
}

sopranonotes = \relative do' { \voiceOne \partial 8
  mi8 sol4 sol8 fad (sol) fad mi4. mi4 mi8 la4 sol8 fad4 fad8 fad4 \bar "!" \break
  fad8 [fad (sol)] la sol4. fad8 (sol fad) sol4. re4 sol8 la4 la8 la4 sol8 fad4.~ fad4 \bar "||" \break
  mi8 si'4 si8 si4 la8 si4.~ si4 mi,8 do'4 do8 do (si) la si4. \bar "!" \break
  si8 mi re do2 (si8) la si4.~ si4 sol8 fad4 fad8 fad (sol) fad mi4.~ mi4 \bar "|."

}

sopranowordsOne = \lyricmode {
  Vous ê -- tes dans mon â __ me.
Jé -- sus Ô Roi des cieux!
Mon cœur d'a -- mour s'en __ flam -- me.
Au com -- ble de mes vœux_! ___
 }

sopranowordsTwo =  \lyricmode {
  
Doux Maî -- tre je __ vous don -- ne
Ma foi, mon humble a -- mour.
Que vo -- tre main si __ bon -- ne
Me gui -- de cha -- que jour. 

Jé -- sus Eu -- cha -- ris -- tie, __
Ô Fils de l’é -- ter -- nel_!
pour moi dans l’hum -- bl'hos -- tie __
vous des -- cen -- dez du ciel_! __

}

sopranowordsThree = \lyricmode {
Mon âme est triste et las -- se.
Sans vo -- tre bon se -- cours_:
j’im -- plo -- re vo -- tre __ grâ -- ce_:
res -- tez en moi tou -- jours.
 }

sopranowordsFour = \lyricmode {
  Jé -- sus mon cœur __ vous ai -- me.
Gar -- dez -- lui sa fa -- veur.
Jé -- sus bon -- té su __ prê -- me,
Jé -- sus di -- vin sau -- veur. 
 }


altonotes = \relative do' { \voiceTwo \partial 8
   
  mi8 mi4 mi8 mi4 mi8 mi4 (re8) do4 mi8 mi4 mi8 mi4 mi8 red4 \bar "!" \break
  red8 [fad mi] red mi4. re re re4 re8 fad4 fad8 fad4 mi8 red4.~ red4 \bar "||" \break
  mi8 sol4 sol8 sol4 fad8 sol4.~ sol4 mi8 la4 la8 la sol fad sol4. \bar "!" \break
  sol8 la si mi,4.~ mi4 mi8 sol2 (fad8) mi8 red4 red8 red8 mi fad mi4.~ mi4 \bar "|."

}
altowords = \lyricmode { }

tenornotes = \relative do'{ \voiceOne
    \clef bass \partial 8
  si8 si4 si8 la (si) la sol4. sol4 sol8 do4 do8 si4 si8 si4 \bar "!" \break
  si8 [si (sol)] fad si4. la8 (sol fad) si4. si4 si8 la4 la8 la4 si8 si4.~ si4 \bar "||" \break
  si8 si4 si8 si4 re8 re4. (si4) si8 mi4 mi8 mi4 mi8 si4. \bar "!" \break
  si8 la sol do la si do re mi mi4.~ mi4 mi8 si4 si8 si4 la8 sol4.~ sol4 \bar "|."
}
tenorwords = \lyricmode {

}
bassnotes = { \voiceTwo
  \clef bass \partial 8
  mi8 mi4 mi8 mi4 mi8 mi4. do4 si,8 la,4 la,8 si,4 si,8 si,4 \bar "!" \break
  si,8 si,4 si,8 mi4. (fad8 sol) la sol4. sol4 sol8 re4 re8 red4 mi8 si,4.~ si,4 \bar "||" \break
  mi8 mi4 mi8 mi4 fad8 sol4 (fad8 mi4) mi8 la4 la8 la (sol) fad mi4. \bar "!" \break
  mi8 mi mi la4.~ la4 la8 mi4.~ mi4 mi8 si,4 si,8 si, dod8 red mi4.~ mi4 \bar "|."
}
basswords = \lyricmode {

}

\score {
  \bookOutputName "Vous etes dans mon ame"
  
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "soprano" <<
        \global
        \sopranonotes
      >>
      \new Voice = "alto" <<
        \global
        \altonotes
      >>
    >>

    \new Staff <<
      \new Voice = "tenor" <<
        \global
        \tenornotes
      >>
      \new Voice = "bass" <<
        \global
        \bassnotes
      >>
    >>
  >>
  \midi {}
}

\score {
  
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "soprano" <<
        \global
        \sopranonotes
      
      \new Lyrics \lyricsto "soprano" {\set stanza = "1. " \sopranowordsOne}
      \new Lyrics \lyricsto "soprano" {\set stanza = "2. " \sopranowordsTwo}
      \new Lyrics \lyricsto "soprano" {\set stanza = "3. " \sopranowordsThree}
      \new Lyrics \lyricsto "soprano" {\set stanza = "4. " \sopranowordsFour}
      
      >>
      <<
       \new Voice = "alto" <<
          \global
          \altonotes
      
          \new Lyrics \lyricsto "alto" \altowords
        >>
      >>
    >>

    \new Staff <<
      \new Voice = "tenor" <<
        \global
        \tenornotes
      >>
      \new Lyrics \lyricsto "tenor" \tenorwords

      \new Voice = "bass" <<
          \global
          \bassnotes
        >>
        \new Lyrics \lyricsto "bass" \basswords
      >>
    >>

}
\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "soprano" <<
        \global
        \sopranonotes
      >>
    >>
  >>
  \midi {}
}
\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "alto" <<
        \global
        \altonotes
      >>
    >>
  >>
  \midi {}
}
\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "tenor" <<
        \global
        \tenornotes
      >>
    >>
  >>
  \midi {}
}
\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "bass" <<
        \global
        \bassnotes
      >>
    >>
  >>
  \midi {}
}
