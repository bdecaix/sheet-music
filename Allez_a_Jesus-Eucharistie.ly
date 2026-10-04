\version "2.24.4"


\language "italiano"

\header {
  title = "Allez à Jésus-Eucharistie"
  %subtitle = ""
  composer = "Les petites sœurs de Van"
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
  \numericTimeSignature
  \time 2/2
  \key sol \major
  \tempo 4=85
}

sopranonotes = \relative do' { \repeat volta 2 {
  \bar ".|:" mi8 mi mi re mi2~ mi8 sol fad mi red4 r8 si mi mi mi fad sol4. sol8 la la sol la si2 do8 si la sol la4. la8  
  \alternative {
    {si4 fad sol4. fad8 mi8. mi16~ mi8 fad sol8. sol16~ sol8 la si2. r4 \bar ":|."} 
    {si4 fad sol4. fad8 sol8. la16~ la8 si la8. sol16~sol8 fad sol2 \bar "|." }
  }
  }

}
sopranonotes_couplets = \relative do'' {
  \partial 2 r8 sol sol la si2 fad8 fad fad si si2 r8
  sol sol la si2 fad8 fad fad si si2 r8 si si do re2 r8 la la re re2. do8 si la4. do8 si la16 sol~ sol8 la si1 \bar ":|."

}

sopranowords = \lyricmode {
  Al -- lez à Jé -- sus __ -Eu -- cha -- ris -- tie_!
  Al -- lez au Dieu vi -- vant ca -- ché dans cette hos -- tie_!
  Soy -- ez  a -- mou -- reux du Pain de Vie, con -- tem -- plez -- le a -- vec Ma -- rie_!
  Pain de Vie, et so -- yez trans -- for -- més en Lui_!
  
}

coupletOne = \lyricmode { \set stanza = "1. "
Par son vi -- sage, _ soy -- ez ré -- jouis_!
Par son re -- gard, so -- yez é -- blou -- is_!
_ Par sa voix, so -- yez con -- duit
Dans son Cœur, ven -- ez pui -- ser la Vie_! }

coupletTwo = \lyricmode {\override LyricText.font-shape = #'italic \set stanza = "2. "
Par sa ten -- dresse, so -- yez con -- so -- lés_!
Par sa dou -- ceur, so -- yez trans -- for -- més_!
_ De sa joie, so -- yez com -- blés_!
Dans son Cœur, ve -- nez vous re -- po -- ser_!
}

coupletThree = \lyricmode { \set stanza = "3. "
Par sa Pa -- role, _ so -- yez pé -- tris_!
_ Par son pain, _ so -- yez nour -- ris_!
_ Par ses mains, so -- yez bé -- nis_!
Dans son Cœur, ven -- ez pui -- ser la Vie_!}

coupletFour = \lyricmode {\override LyricText.font-shape = #'italic  \set stanza = "4. "
Par sa lu -- mière so -- yez é -- clai -- rés_!
 _ Par son sang soy -- ez pu -- ri -- fiés_!
A son A -- mour so -- yez li -- vrés_!
Dans son Cœur, ve -- nez vous re -- po -- ser_!}

coupletFive = \lyricmode { \set stanza = "5. "
_ Par son souffle, so -- yez raf -- fer -- mis_!
Par ses bles -- sures, _ so -- yez gué -- ris_!
_ A sa croix, so -- yez u -- nis_!
Dans son Cœur, ven -- ez pui -- ser la Vie_!}


coupletOneT = \lyricmode { \set stanza = "1. "
Par son vi -- sage, _ soy -- ez ré -- jouis_!
Par son re -- gard, so -- yez é -- blou -- is_!
_ Par sa voix, so -- yez con -- duit
Dans son Cœur, ven -- ez pui -- ser la Vie_! __ }

coupletTwoT = \lyricmode {\override LyricText.font-shape = #'italic \set stanza = "2. "
Par sa ten -- dresse, so -- yez con -- so -- lés_!
Par sa dou -- ceur, so -- yez trans -- for -- més_!
_ De sa joie, so -- yez com -- blés_!
Dans son Cœur, ve -- nez vous re -- po -- ser_! __
}

coupletThreeT = \lyricmode { \set stanza = "3. "
Par sa Pa -- role, _ so -- yez pé -- tris_!
_ Par son pain, _ so -- yez nour -- ris_!
_ Par ses mains, so -- yez bé -- nis_!
Dans son Cœur, ven -- ez pui -- ser la Vie_! __}

coupletFourT = \lyricmode {\override LyricText.font-shape = #'italic  \set stanza = "4. "
Par sa lu -- mière so -- yez é -- clai -- rés_!
 _ Par son sang soy -- ez pu -- ri -- fiés_!
A son A -- mour so -- yez li -- vrés_!
Dans son Cœur, ve -- nez vous re -- po -- ser_! __}

coupletFiveT = \lyricmode { \set stanza = "5. "
_ Par son souffle, so -- yez raf -- fer -- mis_!
Par ses bles -- sures, _ so -- yez gué -- ris_!
_ A sa croix, so -- yez u -- nis_!
Dans son Cœur, ven -- ez pui -- ser la Vie_! __}


coupletOneBasse = \lyricmode {
_ _ _ _ _ _ 
\set stanza = "Couplets 1,3,5" Dans son Cœur, ven -- ez pui -- ser la Vie_! }

coupletTwoBasse = \lyricmode {\override LyricText.font-shape = #'italic 
_ _ _ _ _ _ 
\set stanza = "Couplets 2,4" Dans son Cœur, ve -- nez vous re -- po -- ser_! }




altonotes = \relative do' { \repeat volta 2 {
  si8 si si si do2~do8 mi do do si4 r8 si si si si re mi4. mi8 fad fad mi fad sol2 la8 sol fad mi fad4. fad8
  \alternative {
    {fad4 red mi4. re8 do8. do16~do8 mi mi8. mi16~mi8 mi fad2. r4 }
  {fad4 red mi4. re8 mi8. mi16~mi8 sol fad8. re16~re8 re re2 \bar "|." }
  }
  }
                            
}
altonotes_couplets = \relative do' { 
  \partial 2 r2 r8 fad fad mi red2 sol8 sol sol fad mi2 r8 fad fad mi red2 sol8 sol sol fad mi2 r8 la la sol fad2 r8 si si la sol4 sol8 sol mi4. la8 sol fad16 mi~ mi8 fad fad1 
                            
}
altowords = \lyricmode {
  Al -- lez à Jé -- sus __ -Eu -- cha -- ris -- tie_!
  Al -- lez au Dieu vi -- vant ca -- ché dans cette hos -- tie_!
  Soy -- ez  a -- mou -- reux du Pain de Vie, con -- tem -- plez -- le a -- vec Ma -- rie_!
  Pain de Vie, et so -- yez trans -- for -- més en Lui_!}

tenornotes = \relative do'{ \repeat volta 2 {
  \clef bass r2 r4 sol8 sol la la la la fad4 r8 si8 sol sol sol si do4. do8 re re re re re2 mi8 mi do do re4. re8
  \alternative {
    {red4 si si4. si8 sol8. sol16~ sol8 do do8. do16~ do8 mi mi2 (red4) r4}
  {red4 si si4. si8 do8. do16~ do8 mi re8. la16~ la8 do re2 \bar "|."}
                            }
                            }
}
tenornotes_couplets = \relative do'{ 
  \clef bass
  \partial 2 r2 r8 la la sol fad2 si8 si si la sol2 r8 la la sol fad2 si8 si si la sol2 r8 fad fad mi re2 r8 sol sol re' re4 re8 re do4. mi8 mi re16 si~si8 si mi2 (red)
}


tenorwords = \lyricmode {
  A Jé -- sus- Eu -- cha -- ris -- tie_!
  Al -- lez au Dieu vi -- vant ca -- ché dans cette hos -- tie_!
  Soy -- ez  a -- mou -- reux du Pain de Vie, con -- tem -- plez -- le a -- vec Ma -- rie_!
  Pain de Vie, et so -- yez trans -- for -- més en Lui_!
}
bassnotes = {
  \clef bass \repeat volta 2 {
  r2 r4 do8 si, la, la, la, la, si,4 r8 si, mi mi mi mi do4. do8 re re re re sol2 la8 la la la re4. re8 
  \alternative {
    {si,4 si, mi4. re8 do8. do16~ do8 do la,8. la,16~ la,8 la, si,2. r4}
  {si,4 si, mi4. re8 do8. do16~ do8 do re8. re16~ re8 re sol2 \bar "|."}
  }
  }
  
}
bassnotes_couplets = {
  \clef bass 
  \partial 2 r2 si,1 mi si, mi re sol2. sol8 sol la4. la8 mi8 mi16~ mi mi8 mi si,1
  
}
basswords = \lyricmode {
  A Jé -- sus- Eu -- cha -- ris -- tie_!
  Al -- lez au Dieu vi -- vant ca -- ché dans cette hos -- tie_!
  Soy -- ez  a -- mou -- reux du Pain de Vie, con -- tem -- plez -- le a -- vec Ma -- rie_!
  Pain de Vie, et so -- yez trans -- for -- més en Lui_!
}

\score {
  \bookOutputName "Allez_a_Jesus_Eucharistie"
  
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "soprano" <<
        \global
        \sopranonotes
      >>
    >>

    \new Staff <<
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
    >>
    \new Staff <<
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
    >>
    \new Staff <<
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
        \sopranonotes_couplets
      >>
      \new Lyrics \lyricsto "soprano" \coupletOne
      \new Lyrics \lyricsto "soprano" \coupletTwo
      \new Lyrics \lyricsto "soprano" \coupletThree
      \new Lyrics \lyricsto "soprano" \coupletFour
      \new Lyrics \lyricsto "soprano" \coupletFive
      
    >>

    \new Staff <<
      \new Voice = "alto" <<
        \global
        \altonotes_couplets
      >>
      \new Lyrics \lyricsto "alto" \coupletOne
      \new Lyrics \lyricsto "alto" \coupletTwo
      \new Lyrics \lyricsto "alto" \coupletThree
      \new Lyrics \lyricsto "alto" \coupletFour
      \new Lyrics \lyricsto "alto" \coupletFive
    >>
    \new Staff <<
      \new Voice = "tenor" <<
        \global
        \tenornotes_couplets
      >>
      \new Lyrics \lyricsto "tenor" \coupletOneT
      \new Lyrics \lyricsto "tenor" \coupletTwoT
      \new Lyrics \lyricsto "tenor" \coupletThreeT
      \new Lyrics \lyricsto "tenor" \coupletFourT
      \new Lyrics \lyricsto "tenor" \coupletFiveT
    >>
    \new Staff <<
      \new Voice = "bass" <<
        \global
        \bassnotes_couplets
      >>
      \new Lyrics \lyricsto "bass" \coupletOneBasse
      \new Lyrics \lyricsto "bass" \coupletTwoBasse
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
