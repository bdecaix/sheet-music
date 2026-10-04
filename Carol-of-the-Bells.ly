\version "2.24.4"

\language "italiano"

\header {
  title = "Carol of the Bells"
  subtitle = "(Ukranian Christmas Carol)"
  %composer = ""
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
  \time 3/4
  \key sol \minor
  \tempo 4=180
}

sopranonotes = \relative do' { \repeat volta 2 {
  sib'4^\mp la8 sib sol4 sib4 la8 sib sol4 sib4 la8 sib sol4 sib4 la8 sib sol4 \bar ".|:-|" sib4 la8 sib sol4
  sib4 la8 sib sol4 sib4 la8 sib sol4 sib4 la8 sib sol4 sib4 la8 sib sol4 sib4 la8 sib sol4
  sib4 la8 sib sol4 sib4 la8 sib sol4 sib4^\mf^\< la8 sib sol4\! sib4 la8 sib sol4 sib4^\f la8 sib sol4
  sib la8 sib sol4 re' do8\< re sib4 re do8 re sib4\! re do8 re sib4 re do8 re sib4 sol'^\ff sol8 [sol] fa8 (mib) re4 re8 [re] do (sib) do4 do8 [do] re (do) sib4 la8 sib sol4
  re8^\mf [mi] fad\< [sol] la sib do re\! do4 sib re,8\< [mi] fad [sol] la\! sib do re do4 sib sib^\p la8 sib sol4 sib la8 sib sol4 sib la8 sib sol4 sib la8 sib sol4
  \alternative { \volta 1  
 { sib la8 sib sol4 sib la8 sib sol4 sib la8 sib sol4 sib la8 sib sol4 \bar ":|." }
  \volta 2 {sol2. (sol) (sol)^"rall." (sol) (sol)\fermata \fine}
  }
                               }
}

sopranowords = \lyricmode {
  Hark! are the bells,
  Sweet si -- lver bells
  All seem to say,
  Throw cares a -- way
  Christ --  mas is here,
  Bring ing good cheeer
  To young and old,
  Meek and the bold
  Ding dong -- y dong,
  That is their song 
  With joy --  ful ring,
  All car -- ol -- ing
  One seems to hear,
  Words of good cheer
  From eve -- ry where
Fill -- ing the air
O, how they pound,
Rai -- sing the sound,
O'er Here and There,
Tell -- ing their taile,
Gai -- y they ring
While peo -- ple sing
Songs of good cheer
Christ -- mas is here
Mer -- ry, mer -- ry, mer -- ry, 
Mer -- ry Christ -- mas
Mer -- ry, mer -- ry, mer -- ry, 
Mer -- ry Christ -- mas
Come, on they send
On with -- out end
Their joy -- ful tone
To ev -- ery home
Hark! are the bells,
  Sweet si -- lver bells
  All seem to say,
  Throw cares a -- way

Dong
}

altonotes = \relative do' { \repeat volta 2 {
  R2.*8 sol'2.->^\fp fa mib re sol4^\mf^\< sol8 sol sol4\! sol4 sol8 sol sol4 sol4^\f sol8 sol sol4 sol4 sol8 sol sol4
  sib la8 sib sol4\< sib la8 sib sol4\! sib la8 sib sol4 sib la8 sib sol4
  re'^\ff re8 [re] re (do) sib4 sib8 [sib] la (sol) sol4 sol8 [sol] sib (la) sol4 la8 sol re4 re2.^\mf (mi4 fad sol) re2. (mi4 fad sol)
  R2. R2. fa2. mib \alternative { \volta 1 {re (re) (re) (re) \bar ":|."}
  \volta 2
  {re (re) (re) (re) (re)\fermata \fine}
  }
                            }
}
altowords = \lyricmode { Ding Dong Ding Dong
One seems to hear,
  Words of good cheer
From eve -- ry where
Fill -- ing the air
O, how they pound,
Rai -- sing the sound,
O'er Here and There,
Tell -- ing their taile,
Gai -- y they ring
While peo -- ple sing
Songs of good cheer
Christ -- mas is here
Ding Ding Ding Ding Dong
Ding Dong Ding Dong

Ding Ding Ding Ding Dong}

tenornotes = \relative do'{
  \clef "G_8" \repeat volta 2 { R2.*4
  sol'2.->^\fp fa->^\fp mib->^sim re mib re do sol
  do4^\mf^\< do8 do do4\! re re8 re re4 mib^\f mib8 mib mib4 sib sib8 sib sib4
  re2. (mi)\< fa4\! (mib) re sol8 (fa mib4 re) re^\ff re8 re re4 re do8 re sib4 mib mib8 mib mib4
  re re8 re re4 sib^\mf la8 sib sol4 sib la8 sib sol4 sib la8 sib sol4 sib la8 sib sol4
  sol2. sol sol sol \alternative { \volta 1 {sol (sol) (sol) (sol) \bar ":|." }
  \volta 2   
  {sib4^\p la8 sib sol4 sib4 la8 sib sol4 sib4 la8 sib sol4 sib4 la8 sib sol4 (sol2.)\fermata \fine }
  }
  }
}
tenorwords = \lyricmode {
Ding Dong Ding Dong Ding Dong Ding Dong
One seems to hear,
  Words of good cheer
  From eve -- ry where
Fill -- ing the air
O how they pound
Gai -- y they ring
While peo -- ple sing
Songs of good cheer
Christ -- mas is here
Ding dong -- y dong,
  That is their song 
  With joy --  ful ring,
  All car -- ol -- ing
  Ding Dong Ding Ding Dong
 
 Come, on they send
On with -- out end
Their joy -- ful tone
To ev -- ery home 

}
bassnotes = {
  \clef bass
  \repeat volta 2 { R2.*12
  mib4^\mf^\< mib8 mib mib4\! sol sol8 sol sol4 do^\f do8 do do4
  sol4 sol8 sol sol4 sol sol8 sol sol4\< sol sol8 sol sol4\! sol sol8 sol sol4
  sib4 la8 sib sol4 sib4^\ff la8 sib sol4 sib4 la8 sib sol4 sib4 la8 sib sol4 sib4 la8 sib sol4
  re2.^\mf (re) re (re) fa mib re do \alternative { \volta 1 {sol, (sol,) (sol,) (sol,) \bar ":|."}
  \volta 2 {
 sol, (sol,) (sol,) (sol,) (sol,)\fermata \fine}
  }
  }
  
}
basswords = \lyricmode {
  One seems to hear,
  Words of good cheer
From eve -- ry where
Fill -- ing the air
O how they pound,
Rai -- sing the sound,
O'er Here and There,
Tell -- ing their taile,
Gai -- y they ring
While peo -- ple sing
Songs of good cheer
Christ -- mas is here
Ding Ding Ding Dong Ding ding Dong
 One seems to hear,
  Words of good cheer
From eve -- ry where
Fill -- ing the air

Ding Ding Ding Dong Ding ding Dong
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
    >>
    \new Staff <<
      \new Voice = "bass" <<
        \global
        \bassnotes
      >>
      \new Lyrics \lyricsto "bass" \basswords
    >>
  >>
  %\midi {}
}
