\version "2.24.4"

\language "italiano"

\header {
  title = "Je t'exalte ô Roi, mon Dieu"
  %subtitle = "(Ukranian Christmas Carol)"
  %composer = ""
  %poet = ""
  tagline = ##f
}

\paper {
  system-system-spacing.basic-distance = #20
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
  \key fa \major
  \tempo 4=120
}

sopranonotes = \relative do' { 
  \partial 4 do8 do fa4 fa la sol fa2 la4\rest sol8 la sib4 sib la sib8 la sol2 si4\rest do,4 la' la8 sol fa4 sol8 fa re2 la'8\rest sib8 sib sib la4 fa sol8 [fa] mi sol fa2 la4\rest \bar "||"
  fa8 fa re4 re8 re fa4 mi8 re do2 la'4\rest fa8 fa re re re re fa fa mi re do2 la'4\rest 
  do,8 do fa4 fa8 fa sol4 sol8 sol la2 la4\rest fa8 fa la la la la sol4 la8 sol fa2. \bar "||"

}

sopranowords = \lyricmode {
  Je t'ex -- alte ô Roi mon Dieu je bé -- nis ton nom à ja -- mais
  Je veux te bé -- nir cha -- que jour, lou -- er ton nom tou -- jours et à ja -- mais
  
  Le Sei -- gneur est ten -- dresse et pi -- tié Il est lent à la co -- lère et plein d'A -- mour
  Le Sei -- gneur est bon -- té en -- vers tous, sa ten -- dresse vont à tou -- tes ses oeu -- vres

}

altonotes = \relative do' { 
  \partial 4 do8 do do4 do do re8 (mi) fa2 s4 mi8 fa sol4 sol fa sol8 fa fa2 (mi4) sib4 do8 (re) mi [mi] mi (re) do [do] do2 (sib4) re8 re fa fa re4 re8 re do [do] fa2 s4 \bar "||"
  do4 sol2 sol la s4 do4 sol1 la2 s4 
  sol4 do re fa mi mi2 s4 fa8 fa fa2 fa8 re mi4 re4 sib do \bar "||"
}

altowords = \lyricmode {
Je t'ex -- alte ô Roi mon Dieu je bé -- nis ton nom à ja -- mais
  Je veux te bé -- nir cha -- que jour, lou -- er ton nom tou -- jours et à ja -- mais
  
  Le Sei -- gneur est ten -- dresse et pi -- tié Il est lent à la co -- lère et plein d'A -- mour
  Le Sei -- gneur est bon -- té en -- vers tous, sa ten -- dresse vont à tou -- tes ses oeu -- vres
}

tenornotes = \relative do'{ 
  \clef bass \partial 4 do,8 do la'4 la do sib8 sib la4 la  do sib8la do4 do do2 re4 re8 do sib4 sol la do8 sib la4 la fa sol8 la sib4 sol fa sol8 la sib [la] sol sib la2 mi4\rest 
  fa4 fa2 sib la2. fa4 fa2 sib la2. mi4 fa la re do8 sib la4 la8 sol fa sol la sib do2 sib sib4 sol la \bar "||"
  

                        
}
tenorwords = \lyricmode {

}
bassnotes = { 
  \clef bass \partial 4 do8 do fa2. do8 do fa4 fa la sol8 (fa) mi4 mi8 mi fa4 sol8 (la) sib4 sib8 la sol4 fa8 (mi) fa4 do8 do re4 la, sib, sib,8 la, sol, sol, [sib,] sib, do4 do4 do8 do do [do] fa2 s4 
  la,8 la, sib,4 fa8 fa re4 re8 re fa4 mi8 re do4 la,8 la, sib,4 fa8 fa re re re re fa fa mi re do4 do8 sib, la,4 re8 do sib,4 do dod2 re4 re8 re do2 do fa2. \bar "||"

  
 
}
basswords = \lyricmode {
  Je t'ex -- alte Je t'ex -- alte ô Roi mon Dieu je bé -- nis ton nom à ja -- mais
  Je veux te bé -- nir chaque jour, cha -- que jour, lou -- er ton nom tou -- jours et à ja -- mais
  
  Le Sei -- gneur est ten -- dresse et pi -- tié Il est lent à la co -- lère et plein d'A -- mour
  Le Sei -- gneur est bon -- té en -- vers tous, se ten -- dresse vont à tou -- tes ses oeu -- vres

}


\score {
 
  \new ChoirStaff <<

    \new Staff = "SA" <<
            \override VerticalAxisGroup.default-staff-staff-spacing =
      #'((basic-distance . 8)
         (minimum-distance . 7)
         (padding . 1))
      \new Voice = "soprano" <<
        \global
        \voiceOne
        \sopranonotes
      >>
       \new Lyrics \with { alignAboveContext = #"SA" } \lyricsto "soprano" \sopranowords
       
       \new Voice = "alto" <<
        \global
        \voiceTwo
        \stemDown
        \altonotes
      >>
      \new Lyrics \lyricsto "alto" \altowords
    >>

    \new Staff = "TB" <<
            \override VerticalAxisGroup.default-staff-staff-spacing =
      #'((basic-distance . 8)
         (minimum-distance . 7)
         (padding . 1))
      \new Voice = "tenor" <<
        \global
        \voiceThree
        \tenornotes
      >>
      \new Lyrics \lyricsto "tenor" \tenorwords
      
            \new Voice = "bass" <<
        \global
        \voiceFour
        \bassnotes
      >>
      \new Lyrics \lyricsto "bass" \basswords
    >>
  >>
}
% MIDI 4 VOIX
\score {
  \bookOutputName "Je t exlte o roi mon Dieu"
  
  \new ChoirStaff <<
    \new Staff = "SA" <<
      \new Voice = "soprano" <<
        \voiceOne
        \global
        \sopranonotes
      >>
      \new Voice = "alto" <<
        \voiceTwo
        \global
        \altonotes
      >>


    >>
    \new Staff ="TB" <<
      \new Voice = "tenor" <<
        \global
        \voiceThree
        \tenornotes
      >>
            \new Voice = "bass" <<
        \voiceFour
        \stemDown
        \global
        \bassnotes
      >>
    >>

  >>
  \midi {}
}
% MIDI SOPRANE
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
% MIDI ALTO
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
% MIDI TENOR
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
% MIDI BASSE
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
