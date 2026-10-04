\version "2.24.4"

\language "italiano"

\header {
  title = "THE PEMBROKE CAROL"
  subtitle = "for mixed voices a cappella"
  composer = "ANNA LAPWOOD"
  poet = "SARA TEASDALE"
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
    \RemoveAllEmptyStaves
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
  \key fa \major
  \tempo 4.=50
}

sopranonotesun = \relative do' { \voiceOne \partial 8
  re8^\f la'4 do8 si8. (la16) sol8 la4 do,8 re4 re8 fa4 la8 la4 sol8 la4. (la8) r8
  la8 re4 do8 la8. (sol16) fa8 sol4 la8re,4 mi8 fa8. (mi16) re8 mi4 do8 re4. (re8) r8
  re8^\p la'4 do8 si8. (la16) sol8 la4 do,8 re4 re8 fa4 la8 la4 sol8 la4. (la8) r8
  la8 re4 do8 la8. (sol16) fa8 sol la4 re,4 mi8^\pp fa8. (mi16) re8 mi4 do8 re2. r4. r8 r8
  re8^\ff la'4 do8 si8. (la16) sol8 la4 do,8 re4 re8 fa4 la8 la4 sol8 la4. (la8) r8
  la8 re4^\ff do8 la8. (sol16) fa8 sol4 la8 re,4 mi8 fad8. (mi16) re8 mi4 do8 re2. s2. r4. r4.
  re'4. (sol4. fa4 mi8 re4 la8 re4. do4. fa4. mi4) la,8 la4 do8 re4 fa8 fa (mi) mi mi (re) do la4 re8 do4 si8 la4. r8 r8
  re,8^\f re'4 re8 mi4 mi8 fa4 do8 mi (re) la re4
  <<
      {
        \voiceOne 
        mi8 fa4 sol8 la4.~ la8 r8 la8^\> la4
      }
      \new Voice {
        \voiceTwo 
        do,8 re4 mi8 fa4. (mi8) r8 mi8^"rit." fa4
      }
  >>
  \oneVoice
   sol8 sol (fa) fa fa4 mi8 mi (re) \breathe do sib4 sol8 do4 sib8 la2.^\p \fine

}
sopranonotesdeux = \relative do' { \voiceTwo 
  \partial 8 s8 s2.*26 r4. r8 r8
  re8^\mf la'4 do8 si8. (la16) sol8 la4 do,8 re4 re8 fa4 la8 la4 sol8 la4. (la8) r8
  la8 re4 do8 la8. (sol16) fa8 sol4 la8 re,4 mi8 fa8. (mi16) re8 mi4 do8 re4.
}

sopranowordsun = \lyricmode {
  The kings they came from out the south, All dressed in er -- mine fine;
  They bore Him gold and chry -- so -- prase, And gifts of pre -- cious wine.
  The shep -- herds came from out the north, Their coats were brown and old; They brought Him lit -- tle new born lambs They had not a -- ny gold.
  The wise men came from out the east; And they were wrapped in white;
  The Star that led them all the way Did glo -- ri -- fy the night.
  ah __
  And lo, they brought a joy -- ful song The host of hea -- ven sings.
  The an -- gels sang through all the night Un -- til the ris -- ing sun,
  But lit -- tle Je -- sus fell a -- sleeep Be -- fore the song was done.
}
sopranowordsdeux = \lyricmode { 
  The an -- gels came from hea -- ven high, And they were clad with wings;
  And lo, they brought a joy -- ful song The host of hea -- ven sings.
}

altonotes = \relative do' {
  \partial 8 re8^\f fa4 fa8 re4 mi8 fa4 do8 la4 la8 la4 fa'8 mi4 mi8 fa4 (re8 dod) r8
  sol' fa4 sol8 fa4 do8 sib4 mi8 la,4 do8 re4 re8 do4 do8 la4. (la8) r8
  re8^\p fa4 fa8 re4 mi8 fa4 do8 la4 la8 la4 fa'8 mi4 mi8 fa4 (re8 dod) r8
  sol' fa4 sol8 fa4 do8 sib mi4 la,4 mi'8^\pp fa8. (mi16) re8 mi4 do8 re2. s2.
  <<
      {
        \voiceOne
        re4.--^\f^\< mi4.-- fa4.-- sol4.-- fa4.-- sol4.-- la4.-- si4-- do8-- re4.--^\ff do4.-- si4.-- sol4.-- la4->^\>  la8 la4. la4->  la8 la4.
      }
      \new Voice {
        \voiceTwo \stemUp
        la,4. si4. do4. re4. do4. re4. fa4. sol4 la8 la4. la4. sol4. mi4. fad4  fad8 fad4. fa4  fa8 fa4.
      }
  >>
  \oneVoice  
  re4^\mp re8 re4.~ re4. r4.
  <<
      {
        \voiceOne
        fa4.^\mf (sol4. la4 sol8 fa4. la4. do4.~ do4. dod4) la8 fa4 mi8 fa4 la,8 si4 dod8 re4 sol8 fa4 fa8 sol4 mi8 fa4.
        r8 r8
        re8^\f la'4 do8 si8. (la16) sol8 la4 do,8 re4 re8 fa4 la8 la4 sol8 la4. (la8) r8 la^\> re4 do8 la8. (sol16) fa8  sol4 la8 re,4 \breathe mi8 fa8. (mi16) re8 mi4 mi8 re2.^\p \fine
      }
      \new Voice {
        \voiceTwo \stemUp
        re2.~ (re4 la8 sib4 do8 re4 fa8 mi4 do8 fa4 sol8 la4) la,8 sib4 do8 re4 fa,8 sol4 la8 sib4 do8 re4 re8 do4 do8 re4.
        r8 r8
        re8 fa4 fa8 re4 mi8 fa4 do8 la4 la8 la4 fa'8 mi4 mi8 fa4 (re8 dod) r8 sol'8 fa4 sol8 fa4 do8 sib4 mi8 la,4 do8 re4 re8 do4 do8 la2. \fine
      }
  >>
}
altowords = \lyricmode { The kings they came from out the south, All dressed in er -- mine fine;
They bore Him gold and chry -- so -- prase, And gifts of pre -- cious wine.
The shep -- herds came from out the north, Their coats were brown and old; They brought Him lit -- tle new born lambs They had not a -- ny gold.
Wise men came from out of the east; The Star that led them: glo -- ri -- fy, glo -- ri -- fy, glo -- ri -- fy!--
ah __
And lo, they brought a joy -- ful song The host of hea -- ven sings.
The an -- gels sang through all the night Un -- til the ris -- ing sun, But lit -- -tle Je -- sus fell a -- sleeep Be -- fore the song was done.}

tenornotes = \relative do'{
  \clef "G_8"
  \partial 8 re8^\f
  re4 la8 sol4 do8 mi (re) do16 (sol) sol8 (fa) mi re4 la'8 do4 do 8 do4 (sib8 la) r8
  dod re 4 do8 do4 fa,8 sol4 sol8 sol (fa) sol16 (la) sib4 sib16 (la) sol4 sol8 sol4 (mi8 fa) r8
  re'8^\p re4 la8 sol4 do8 mi (re) do16 (sol) sol8 (fa) mi re4 la'8 do4 do 8 do4 (sib8 la) r8
  dod re4 do8 do4 fa,8 sol sol4 sol8 (fa) mi^\pp fa8. (mi16) re8 mi4 do8 re2. r2.
   fa4.--^\f^\< sol4.-- la4.-- si4.-- la4.-- si4.-- do4.-- re4-- mi8-- fa4.--^\ff mi4.-- re4.-- re4.-- re4->^\> re8 re4. re4-> re8 re4. re4^\mp re8 re4.->~ re4. r4.
  r2. r2. r2. r2. r2. r2. r2. r4. r8 r8
  re8^\f re4 la8 sol4 do8 mi (re) do16 (sol) sol8 (fa) mi re4 la'8 do4 do 8 do4 (sib8 la) r8
  dod^\> re 4 do8 do4 fa,8 sol4 sol8 sol (fa) \breathe sol16 (la) sib4 sib16 (la) sol4 sol8 fad2.^\p \fine
}
tenorwords = \lyricmode { The kings they came from out the south, All dressed in er -- mine fine;
They bore Him gold and chry -- so -- prase, And gifts of pre -- cious wine.
The shep -- herds came from out the north, Their coats were brown and old; They brought Him lit -- tle new born lambs They had not a -- ny gold.
Wise men came from out of the east; The Star that led them: glo -- ri -- fy, glo -- ri -- fy, glo -- ri -- fy!--
The an -- gels sang through all the night Un -- til the ris -- ing sun, But lit -- -tle Je -- sus fell a -- sleeep Be -- fore the song was done.}
bassnotes = {
  \clef bass
  \partial 8 re8^\f re4 re8 sol4 la8 sib (sib,) do re4 re8 re4 re8 do4 do8 fa,4 (sol,8 la,) r8
  la, sib,4 mi8 fa4 la,8 sol,4 dod8 re4 do8 sib,4 sib,8 do4 do8 re4. (re8) r8
  re8^\p re4 re8 sol4 la8 sib (sib,) do re4 re8 re4 re8 do4 do8 fa,4 (sol,8 la,) r8
  la, sib,4 mi8 fa4 la,8 sol, dod4 re4 mi8^\pp fa8. (mi16) re8 mi4 do8 re4.^\< re4. re4. re4. (re8)
  re4->~^\f^\< re8 re4->~ re8 re4->~ re8 re4->~ re8 re4->~ re8 re4->~ re8 re4->~ re8 re4->~ re8 re4->~^\ff re8 re4->~ re8 re4->~ re8 re4-> re4->^\>  re8 re4. re4-> re8 re4.
  r2.^\mp r2. r2. r2. r2. r2. r2. r2. r2. r4. r8 r8
  re8^\f re4 re8 sol4 la8 sib (sib,) do re4 re8 re4 re8 do4 do8 fa,4 (sol,8 la,) r8
  la,^\> sib,4 mi8 fa4 la,8 sol,4 dod8 re4 \breathe do8 sib,4 sib,8 do4 do8 re2.^\p \fine
  
}
basswords = \lyricmode { The kings they came from out the south, All dressed in er -- mine fine;
They bore Him gold and chry -- so -- prase, And gifts of pre -- cious wine.
The shep -- herds came from out the north, Their coats were brown and old; They brought Him lit -- tle new born lambs They had not a -- ny gold, no gold, no. 
Wise men came from out of the east; Star that led them: glo -- ri -- fy, glo -- ri -- fy!--
The an -- gels sang through all the night Un -- til the ris -- ing sun, But lit -- -tle Je -- sus fell a -- sleeep Be -- fore the song was done.}

\score {
  
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "sopranoun" <<
        \global
        \sopranonotesun
      >>
       \new Lyrics \lyricsto "sopranoun" \sopranowordsun
    >>
    \new Staff <<
      \new Voice = "sopranodeux" <<
        \global
        \sopranonotesdeux
      >>
     
      \new Lyrics \lyricsto "sopranodeux" \sopranowordsdeux
      
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
