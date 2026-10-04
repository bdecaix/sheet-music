\version "2.24.4"

\language "italiano"

\header {
  title = "A TOI PUISSANCE ET GLOIRE"
  subtitle = ""
  composer = "E. Baranger"
  %poet = ""
  tagline = ##f
}

\paper {
  system-system-spacing.basic-distance = #0
  top-margin = 3
  line-width = 200
  
  score-system-spacing =
    #'((padding . 1)
       (basic-distance . 100)
       (minimum-distance . 6)
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
  \time 4/4
  \key sol \major
  \tempo 4=150
}

sopranonotes = \relative do' { \voiceOne
  si'2 si si8 la~ la [sol] la fad re4 sol2 sol sol8 fad~ fad [mi] fad red si4 mi2 mi re8 mi~ mi [fad] sol4 si la2 sol4 fad sol1


}

sopranowords = \lyricmode {



}

altonotes = \relative do' { \voiceTwo
  sol'2 sol sol8 fad~ fad [mi] fad re re4 mi2 mi mi8 mi~ mi [mi] red4 red re2 do do8 do~ do [re] re4 re mi2 re4 re re1

}
altowords = \lyricmode { }

tenornotes = \relative do'{ \voiceOne
    \clef bass re2 re mi4 si8 do re la fad4 sol2 si la4 la8 la si4. la8 sol2 sol la4 la8 la si4 sol sol2 do4 do si1 
}
tenorwords = \lyricmode {

}
bassnotes = { \voiceTwo
  \clef bass sol2 fad mi re4 re mi2 re dod si,4 red mi2 la, re si,4 si, do2 re4 re sol,1
  
}
basswords = \lyricmode {

}

\score {
  \bookOutputName "A_toi_puissance_et_gloire"
  
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
      >>
       \new Lyrics \lyricsto "soprano" \sopranowords
       
    >>
    
        \new Staff <<
      
             \new Voice = "alto" <<
        \global
        \altonotes
      >>
      \new Lyrics \lyricsto "alto" \altowords
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
