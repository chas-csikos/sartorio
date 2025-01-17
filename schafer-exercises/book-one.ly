\version "2.24.4"
\language "english"

\include "include/paper.ily"
\include "include/layout.ily"

\include "oll-core/package.ily"
\loadPackage edition-engraver

#(define sn 0)
#(define (score-number)
   (set! sn (1+ sn))
   (string-append (number->string sn) "."))

% \header {
%   title = "Sight Reading Exercises"
%   subtitle = "Within the compass of five notes."
%   composer = "Christian Schäfer"
%   opus = "Op. 45"
% }

\paper {
  min-systems-per-page = #4
  max-systems-per-page = #6
  first-page-number = #2
  print-first-page-number = ##t
  % annotate-spacing = ##t
}

%% 1
first = {
  e2( d c d e f d1)
  f2( e d e f g e1)
  g2( f e g f e d1)
  f2( e d f e d c1)
  \bar "|."
}

\score {
  \header {
   piece = "Movement of one degree and skips of the three, both hands alike."
  }
   \new PianoStaff \with { instrumentName = #(score-number) } <<
     \new Staff <<
        \relative c' \first
     >>
     \new Staff \with { \clef bass } <<
       \relative c \first
     >>
   >>
   \layout {
     \context {
       \Score
       \editionID ##f one
     }
   }
}

%% 2
second = {
  e2( f g1)
  f2( e d1)
  d2( e f1)
  e2( d c1)
  c2( d e1)
  f2( e d1)
  g2( f e d c1)
  c1
  \bar "|."
}

\score {
  \header { piece = "The same with a skip of the four." }
   \new PianoStaff \with { instrumentName = #(score-number) }  <<
     \new Staff <<
        \relative c' \second
     >>
     \new Staff \with { \clef bass } <<
       \relative c \second
     >>
   >>
   \layout {
     \context {
       \Score
       \editionID ##f two
     }
   }
}

%% 3
three = {
  \key g \major
  g1(b2 c d1 c)
  g1( c2 b a1 ~ a)
  c1( b2 a d1 b)
  c1( b2 a g1 ~ g)
  \bar "|."
}
\score {
  \header { piece = "The same with skips of the three and four." }
   \new PianoStaff \with { instrumentName = #(score-number) } <<
     \new Staff <<
        \relative g' \three
     >>
     \new Staff \with { \clef bass } <<
       \relative g \three
     >>
   >>
   \layout {
     \context {
       \Score
       \editionID ##f three
     }
   }
}



%% 4
four = {
  \key d \major
  a1(d, g fs2 e fs1 g e) ~ e
  fs1( e g fs2 d fs1 e d) ~ d
  \bar "|."
}

\score {
  \header { piece = \markup { "Skips of the three, four and fifth with"\concat{ F\super\sharp } "for the three finger in each hand." } }
   \new PianoStaff \with { instrumentName = #(score-number) } <<
     \new Staff <<
        \relative g' \four
     >>
     \new Staff \with { \clef bass } <<
       \relative g \four
     >>
   >>
   \layout {
     \context {
       \Score
       \editionID ##f four
     }
   }
}

%% 5
\score {
  \header { piece = "Each hand different without skips." }
   \new PianoStaff \with { instrumentName = #(score-number) } <<
     \new Staff <<
        \relative c' {
          c1( d2 e f1) ~ f
          e1( f2 e d1) ~ d
          c1( d2 e)
          f1( e2 d)
          e1( d c) ~ c
          \bar "|."
        }
     >>
     \new Staff \with { \clef bass } <<
       \relative c {
         c1 ~ c
         d1( e2 f g1) ~ g ~ g2 r
         g2 f e1 ~ e
         d1( e2 f g1) ~ g2( f e d c1)
       }
     >>
   >>
   \layout {
     \context {
       \Score
       \editionID ##f five
     }
   }
}

%% 6
\score {
  \header { piece = "The same with skips." }
   \new PianoStaff \with { instrumentName = #(score-number) } <<
     \new Staff <<
        \relative c' {
          c2 e g1
          e2 d c1
          c2( d e f g1)( e)
          f2( e d1)
          g2( e c1)
          d1( e2 d c1) ~ c
          \bar "|."
        }
     >>
     \new Staff \with { \clef bass } <<
       \relative c {
         c c2 e g1 e2 c e( d c d e1)( g) d2( e f1) e ~ e f g c, ~ c
       }
     >>
   >>
   \layout {
     \context {
       \Score
       \editionID ##f six
     }
   }
}

%% 7
\score {
  \header { piece = "The same." }
   \new PianoStaff \with { instrumentName = #(score-number) } <<
     \new Staff <<
        \relative c'' {
          \key g \major
          d1( b a g)
          a2( b) g( b) a1( g)
          b2( c d g, a c b1)
          a2( g) b( g)
          a1( g)
          \bar "|."
        }
     >>
     \new Staff \with { \clef bass } <<
       \relative g {
         \key g \major
         g2( a b c d c b1)
         c2( d) b( g) d'2( c b1)
         d1( b a g)
         a2( b) g( b) c1( b)
       }
     >>
   >>
   \layout {
     \context {
       \Score
       \editionID ##f seven
     }
   }
}

%%8
\score {
  \header { piece = "The same." }
   \new PianoStaff \with { instrumentName = #(score-number) } <<
     \new Staff <<
        \relative g' {
          \key g \major
          g2( a b g a b c1)
          a2( b c a b c d1)
          b2( a g b c b a1)
          b2( c b a g1) g1
          \bar "|."
        }
     >>
     \new Staff \with { \clef bass } <<
       \relative g {
         \key g \major
         g1( g2 b c b a b)
         c2( b a c b a b c)
         d1( b a2 b c1)
         d1 d2( c b a g1)
       }
     >>
   >>
   \layout {
     \context {
       \Score
       \editionID ##f eight
     }
   }
}



%%9
\score {
  \header { piece = "The same." }
   \new PianoStaff \with { instrumentName = #(score-number) } <<
     \new Staff <<
        \relative b' {
          \key g \major
          b2( c d g,)
          c1( a)
          b2( a b c)
          a1(  a)
          g1( b)
          a2( b c a)
          g( a b a g1)
          \bar "|."
        }
     >>
     \new Staff \with { \clef bass } <<
       \relative g {
         \key g \major
         g1( b)
         a2( b c a g1) ~ g
         d'2( c b a b c d g,)
         c1( a)
         b2( c d1 g,)
       }
     >>
   >>
   \layout {
     \context {
       \Score
       \editionID ##f nine
     }
   }
}

%%10
\score {
  \header { piece = "Higher ledger lines." }
   \new PianoStaff \with { instrumentName = #(score-number) } <<
     \new Staff <<
        \relative e'' {
          e2( f e d c1)
          d2 e
          f2( g f e d1) ~ d
          c1( ~ c2 d e1) ~ e
          d( e2 d c1) ~ c
          \bar "|."
        }
     >>
     \new Staff \with { \clef bass } <<
       \relative c' {
         c1( ~ c2 d e1) ~ e
         d1( ~ d2 e f1)
         g2 f
         e2( f e d c1)( d2 e f1)
         g2( f e d c1)
       }
     >>
   >>
   \layout {
     \context {
       \Score
       \editionID ##f ten
     }
   }
}

%%11
\score {
  \header { piece = "With Semibreve and Minim rests." }
   \new PianoStaff \with { instrumentName = #(score-number) } <<
     \new Staff <<
        \relative c' {
          d1( f2 e g1) R1
          f1( a2 f d1) R1
          r2 f( e d) g1( e) f a( ~ a2 f d1)
          \bar "|."
        }
     >>
     \new Staff \with { \clef bass } <<
       \relative c {
         R1 R1 d( f2 e a1)
         R1 f1( a2 f d1)( e2 f e1 g)
         r2 a2( f e d1) ~ d |
       }
     >>
   >>
   \layout {
     \context {
       \Score
       \editionID ##f eleven
     }
   }
}

%%12
\score {
  \header { piece = \markup { "With C"\concat{ \super\sharp }"and Minim rests." } }
   \new PianoStaff \with { instrumentName = #(score-number) } <<
     \new Staff <<
        \relative c'' {
          \key a \major
          r2 e2( d b a1 cs)
          d1( cs b) ~ b
          cs( d e cs)
          r2 b( cs b a1) ~ a
          \bar "|."
        }
     >>
     \new Staff \with { \clef bass } <<
       \relative c' {
         \key a \major
         a1( b cs a)
         r2 b( cs d e1) ~ e
         r2 e( d b cs1 a)
         e1 ~ e a, ~ a
       }
     >>
   >>
   \layout {
     \context {
       \Score
       \editionID ##f twelve
     }
   }
}

%%13
\score {
  \header { piece = \markup { "Crotchets against long notes." } }
   \new PianoStaff \with { instrumentName = #(score-number) } <<
     \new Staff <<
        \relative c' {
          c4( d e f g f e d c d e f)
          e2( d)
          e4( f g f e f e d c d e d c1) \bar"||"
          e1( d e g) c, g' e2 c ~ c1
          \bar "|."
        }
     >>
     \new Staff \with { \clef bass } <<
       \relative c {
         c1( d e g)
         e1( c)
         g'1( c,)
         c4( d e f g f e d c d e f)
         e2( d)
         e4( f g f e d e d c d e d c1)
       }
     >>
   >>
   \layout {
     \context {
       \Score
       \editionID ##f thirteen
     }
   }
}

%%14
\score {
  \header { piece = "Similar" }
   \new PianoStaff \with { instrumentName = #(score-number) } <<
     \new Staff <<
        \relative g' {
          \key g \major
          g4( a b a g b d2)
          c4( d c b a1)
          g1 b a g
          \bar "|."
        }
     >>
     \new Staff \with { \clef bass } <<
       \relative g {
         \key g \major
         g1( b) a( d2 c)
         b4( c b a g b d2)
         c4( b a c b2 g)
       }
     >>
   >>
   \layout {
     \context {
       \Score
       \editionID ##f fourteen
     }
   }
}

%%15
\score {
  \header { piece = "Minims and Crotchets for both hands." }
   \new PianoStaff \with { instrumentName = #(score-number) } <<
     \new Staff <<
        \relative d' {
          \key d \major
           d4( e fs g a2) ~ a4 g fs( g fs e d1)( d4)( e fs e d e fs g a g fs e d1)
           \bar "|."
        }
     >>
     \new Staff \with { \clef bass } <<
       \relative d {
         \key d \major
         d2( ~ d4 e fs e fs g a2) a4( g fs e d e fs g a g) fs( e d e fs g a g fs) a( d,2)
       }
     >>
   >>
   \layout {
     \context {
       \Score
       \editionID ##f fifteen
     }
   }
}

%%16
\score {
  \header { piece = "Introducing Crotchet rests and accidentals." }
   \new PianoStaff \with { instrumentName = #(score-number) } <<
     \new Staff <<
        \relative g' {
           r4 g( c b) a2( d) b4( c d b c1)
           b4( a b c) d2( c) c( a) g1
           r4 g( a bf) a2( c) r4 g( a bf a1)
           r4 g( a b c b d) c( a2 b c1)
           \bar "|."
        }
     >>
     \new Staff \with { \clef bass } <<
       \relative c {
         c2( e f1) g2( f) e4( d e f g1)
         fs2( g) e( fs)
         g4( f e d)
         e2( c)
         f1
         e2( c)
         f1
         f1( e)
         f2( d c1)
       }
     >>
   >>
   \layout {
     \context {
       \Score
       \editionID ##f sixteen
     }
   }
}

%%17
\score {
  \header { piece = "Similar in F." }
   \new PianoStaff \with { instrumentName = #(score-number) } <<
     \new Staff <<
        \relative a' {
          \key f \major
          r4 a( bf a) c2( g) bf2( f) a1
          r4 g( a bf) a2( f) g2( b) c1
          a4( g a bf) c2( g) a2( f) bf1
          a4( c bf a) bf2( f) a2( g f1)
          \bar "|."
        }
     >>
     \new Staff \with { \clef bass } <<
       \relative f {
         \key f \major
         f1( e d c)
         e1( f)
         e2( d c1)
         f1( e)
         f2( ef d e)
         f1 d
         c2( e f1)
       }
     >>
   >>
   \layout {
     \context {
       \Score
       \editionID ##f seventeen
     }
   }
}

%%18
\score {
  \header { piece = "" }
   \new PianoStaff \with { instrumentName = #(score-number) } <<
     \new Staff <<
        \relative c'' {
          \tempo "Tempo di Valse"
          \key f \major
          \time 3/4
          c2.( f) d( g)
          e2( d4 e2 c4 f2.) ~ f
          e2.( g) f( c)
          e2( f4 d2 e4 c2.) ~ c
          f2.( c) g'( d)
          e2( d4 e2 c4 f2.) ~ f
          d2. ~ d e ~ e f ~ f ~ f ~ f
          \bar "|."
        }
     >>
     \new Staff \with { \clef bass } <<
       \relative a {
         \key f \major
         \time 3/4
         a2. ~ a bf ~ bf c( bf a) ~ a g ~ g a ~ a g( b c)( bf a) ~ a bf ~ bf c( bf a) ~ a bf g c bf a c f, ~ f
       }
     >>
   >>
   \layout {
     \context {
       \Score
       \editionID ##f eighteen
     }
   }
}

%%19
\score {
  \header { piece = "Part playing in Valse time" }
   \new PianoStaff \with { instrumentName = #(score-number) } <<
     \new Staff <<
        \relative a' {
          \key f \major
          \time 3/4
          a4( g f) d2. e4( f d) e2. f4( g a) g( d f) e( f d r) d e g( f g) d2. e4( f g) a2. g4( a g) f( e f) d2( e4 f2.)
          \bar "|."
        }
     >>
     \new Staff \with { \clef bass } <<
       \relative f {
         \key f \major
         \time 3/4
         f4( g a) c( bf a) g( a b) c2( bf4 a2.) b c2 b4 c2 bf4 a2. bf4( c bf) g2. gf4( g a bf2.) a c4( bf g) f2.
       }
     >>
   >>
   \layout {
     \context {
       \Score
       \editionID ##f nineteen
     }
   }
}

%%20
\score {
  \header { piece = "Introducing Quavers." }
   \new PianoStaff \with { instrumentName = #(score-number) } <<
     \new Staff <<
        \relative e' {
          \time 2/4
          \tempo "Adante"
          e4( f8 g a2) g4( d8 e f2) e4( f8 e) d4( f) e2( d) e4( a g2) f8( e f g a2) g ~ g e ~ e
          \bar "|."
        }
     >>
     \new Staff \with { \clef bass } <<
       \relative c {
         \time 2/4
         c2( c) b a4( b c2) f, g ~ g c( b a f) g( b c) ~ c
       }
     >>
   >>
   \layout {
     \context {
       \Score
       \editionID ##f twenty
     }
   }
}

%21
\score {
  \header { piece = "With Accidentals."}
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff <<
      \relative {
        \time 2/4
        \tempo "Allegretto"
        \key g \major
        g'8( a) fs( a) |
        g4( e) |
        a8( g fs e) |
        b'4. a8 g( a) fs( a) g4( e) a8( e) g( fs) e2 |
        b'4.( a8 g4 e) |
        b'4.( a8 g2) a8( g fs e) a4( e) |
        fs2 ~ fs |
        g8( a) fs( a) g4( e) a8( g fs e) |
        b'4. a8 g( a) fs( a) |
        g4( e) |
        a8( e) g( fs) e2
        \bar "|."
      }
    >>
    \new Staff \with { \clef bass } <<
      \relative {
        \time 2/4
        \key g \major
        e4( ds |
        e2) |
        c2 |
        b4 ds |
        e4( ds e2) |
        a,8( c) b( ds) |
        e2 |
        ds8( cs ds b) |
        e2 |
        ds8( cs ds b) |
        e2 |
        c |
        b |
        ds8( e) cs( e) |
        ds2 e4( ds e2) c b4 ds e( ds e2) a,8( c) b( ds) e2
        \bar "|."
      }
    >>
  >>
  \layout {
     \context {
       \Score
       \editionID ##f twentyone
     }
  }
}

\pageTurn

%22
\score {
  \header { piece = "A Little Dance." }
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff <<
      \relative {
        \time 6/8
        \key d \major
        \tempo "Moderato"
        fs'4( d8) g( fs g)
        a4. fs
        g( fs
        e a)
        fs4( d8) g( fs g)
        a4.( fs)
        g( e
        d2.)

        e8( fs g fs4 a8)
        e( fs g fs4.)
        d8( e fs e4 a8)
        d,( e fs e4.)
        fs4( d8) g( fs g)
        a4.( fs)
        g( e
        d2.)
        \bar "|."
      }
    >>
    \new Staff \with { \clef bass } <<
      \relative {
        \time 6/8
        \key d \major
        d4.( b a d) cs4( a8) d( cs b) cs2. |
        d4.( b cs d) b4( d8) cs( b cs) d2. |
        cs4.( d) cs( d) b( cs) b( cs)
        d( b cs d) b4( d8) cs( b cs) d2.
        \bar "|."
      }
    >>
  >>
  \layout {
     \context {
       \Score
       \editionID ##f twentytwo
     }
  }
}


%23
\score {
  \header { piece = "Another Little Dance."}
  \new PianoStaff \with { instrumentName = \markup { #(score-number) } } <<
    \new Staff <<
      %\set Staff.instrumentName = "" % required for incipit to render
      %\incipitModern \relative { \omit Stem \omit Beam \omit Flag \omit Staff.TimeSignature \time 6/8 g'8_1 a b c d_5 }
      \relative {
        \time 6/8
        \key g \major
        \tempo "Moderato"
        b'4( d8) a4( c8) b( d b g4.)
        a g4( c8) a4.( ~ a8 g a)
        b4( d8) a4( c8) b( d b g4.) a4( d8) cs( b cs) d2.
        a4( c8) b4( d8) c( b c a4.) g4( b8) a4( d8) b( a b g4.) b4( d8) a4( c8) b( d b g4.) a4( d8) b( c a g2.)
        \bar "|."
      }
    >>
    \new Staff \with { \clef bass } <<
      %\set Staff.instrumentName = "" % required for incipit to render
      %\incipitModern \relative { \omit Stem \omit Beam \omit Flag \omit Staff.TimeSignature  \time 6/8 \clef bass d8-5 e fs! g a-1 }
      \relative {
        \time 6/8
        \key g \major
        g4.( fs g) e fs4( a8) e4( g8) fs( a fs d4.) g( fs g) e fs( e d2.)
        fs4.( g a fs) e( fs g2.) g4.( fs g) e d( fs g2.)
        \bar "|."
      }
    >>
  >>
  \layout {
     \context {
       \Score
       \editionID ##f twentythree
     }
     %indent = 1.5\in
     %incipit-width = 1.25\in
  }
}

\pageBreak

%24
\score {
  \header { piece= "Preparation For The Shake, Right Hand."}
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff <<
      \relative {
        \time 4/4
        \key g \major
        \tempo "Allegro"
        b'8( c b c b4) a8( g) d'4-. d-. a2 b8( c b c b4) a8( g) a1
        g8( a g a g4) a8( b) a( b a b a4) b8( c) b( c b c) b4( cs d1)
        c8( d c d c4) b8( a)
        b4-. b-. g( a)
        b8( c b c b4) a8( g)
        a4-. a-. b( a)
        g8( a g a g4) a8( b)
        c8( d c d c4) b8( a)
        b8( c b c) a( b a b) g1
        \bar "|."
      }
    >>
    \new Staff \with { \clef bass } <<
      \relative {
        \time 4/4
        \key g \major
        g4( fs g e) fs( e fs d) g( fs g e) fs( e fs d) e( ds e2) fs4( e fs2) g4( fs g e) d( e fs d) e( d e fs) g( fs e fs) g( fs g e) fs( e ds2) e4( ds e2) a4( gs a fs) g( e fs d) g1
        \bar "|."
      }
    >>
  >>
  \layout {
     \context {
       \Score
       \editionID ##f twentyfour
     }
  }
}

%25
\score {
  \header { piece = "The Same For The Left Hand"}
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff <<
      \relative {
        \time 4/4
        \key g \major
        \tempo "Allegro"
        g'1( fs e2 fs g1) b2( g fs a g e) r4 fs b( a) g1( fs e2 fs g) g4 a b2( g4 f) e2( a4 g) fs2( e4 fs) g1 |
        \bar "|."
      }
    >>
    \new Staff \with { \clef bass } <<
      \relative {
        \time 4/4
        \key g \major
        b8( c b c b4) a8( g) |
        d'4-. d( a) b
        c8( d c d c4) b8( a) |
        b8( c b c b4) a |
        g8( a g a b4) c8( b) |
        a8( b a b c4) d8( c) b( c b d) cs( b cs a) d2 c b8( c b c b4) a8( g) d'4-. d( a) b
        c8( d c d c4) b8( a) b( c b c b4) a g8( a g a b2) c8( d c b c2) d4( a d c) b( d g,2)
        \bar "|."
      }
    >>
  >>
  \layout {
     \context {
       \Score
       \editionID ##f twentyfive
     }
  }
}

\pageTurn

%26
\score {
  \header {}
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff <<
      \relative {
        \time 4/4
        \key c \major
        \tempo "Andante"
        <c' e>1( <b f'> <c e> <b d> c <b d> <c e>) ~ <c e> d( c) <b f'>( <c e>) \tieUp <b d> ~ <c d> ~ \tieNeutral <b d> ~ <b d> <c e>( <b f'> <c e> <b d>) c( <b d> <c e>) ~ <c e> d( ~ <d f> <c e> <b d> c) ~ c ~ c ~ c
        \bar "|."
      }
    >>
    \new Staff \with { \clef bass } <<
      \relative {
        \time 4/4
        \key c \major
        c2( g') d( g) c,( e g f) e( g) d( g) c,( e g1)
        f2( g) e( g) d( g) c,( g') d( g) d( fs) g( f e d) c( g') d( g) c,( e g f) e( g) d( g) c,( e g1)
        f2( e d f) g( fs g f) e( f g e c1) ~ c
        \bar "|."
      }
    >>
  >>
  \layout {
     \context {
       \Score
       \editionID ##f twentysix
     }
  }
}

%27
\score {
  \header {}
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff <<
      \relative {
        \time 4/4
        \key c \major
        \tempo "Allegretto"
        <<
          \relative c' {
            e1 d4 e f d e1 d4 f e d s1 |
            e1 d1 ~ d e ~ e4 d cs d |
            f1 ~ f4 e ds e d f e d |
            s1 s s |
          }
          \\
          \relative c' {
            c1 ~ c2 b c1 ~ c2 b c1 ~ |
            c1 ~ c b c b ~ b c ~ c ~ \oneVoice <c e>2 <b d> c1 ~ c |
          }
        >>
        \bar "|."
      }
    >>
    \new Staff \with { \clef bass } <<
      \relative {
        \time 4/4
        \key c \major
        c4( d e f g1) c,4( d e f g2.) f4 | e( f e d |
        c) e( f g) fs( d e fs g f e d) c( d e f g1) |
        d4( e f g c,1) f g2( f e4 f e d c1)
        \bar "|."
      }
    >>
  >>
  \layout {
     \context {
       \Score
       \editionID ##f twentyseven
     }
  }
}

\pageBreak

%28
\score {
  \header {}
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff <<
      \relative {
        \time 4/4
        \key g \major
        \tempo "Allegro"
        <<
          \relative b' {
            \oneVoice
            b1 a fs4( g a fs) g1 e4( fs g e) \voiceOne a4( g fs2) \oneVoice g4( a b a) g( e \parenthesize d2) g2( fs4 g)
            s1 \voiceOne a2( g4 a) \oneVoice fs1 g4( a b g) \voiceOne fs4( e b' a) \oneVoice g2( fs g1)  |
          }
          \\
          \relative g' {
            g1 e s s s2. \once\hideNotes e4 ~ e2 fs s1 s s e1 ~ e s s s4 \once\hideNotes e4 ~ e2 | s1
          }
        >>
        \bar "|."
      }
    >>
    \new Staff \with { \clef bass } <<
      \relative {
        \time 4/4
        \key g \major
        g2( a4 b) c2( b4 c) d2( c b a4 b) c2( b) cs( d) b4( a g a b cs d c) b1 c4( d c b) c1 d4( c b a) b2 g4 b c1 d( g,)
        \bar "|."
      }
    >>
  >>
  \layout {
     \context {
       \Score
       \editionID ##f twentyeight
     }
  }
}

%29
\score {
  \header {}
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff <<
      \relative {
        \time 2/4
        \key f \major
        \tempo "Allegretto"
        <<
          \relative b' {
            c2( ~ c ~ c ~ c4 bf) a4( bf c2 ~ c4 b c2)( ~
            c2 ~ c c  c4 bf) a4( bf) g( a) bf( g f2)
          }
          \\
          \relative g' {
            a4 g f g a g f2 ~ f g4 a g f s2 a4 g f g a g f2 ~ f ~ f f4
          }
        >>
        \bar "|."
      }
    >>
    \new Dynamics { s2*8\mp s2\p }
    \new Staff \with { \clef bass } <<
      \relative f' {
        \time 2/4
        \key f \major
        f4( e d e f e d2) c4( d e f e d <c e>2)
        f4( e d e f e d2) c4( d) bf( e) d( e \parenthesize f2)
        \bar "|."
      }
    >>
  >>
  \layout {
     \context {
       \Score
       \editionID ##f twentynine
     }
  }
}

\pageBreak

%30
\score {
  \header {}
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff <<
      \relative {
        \time 2/4
        \key f \major
        \tempo "Allegretto"
        f'4( cs d e cs e d2) cs4( d e f e d cs2) (d4 cs d e cs d e2) (d4 f e cs d2) ~ d |
        \bar "|."
      }
    >>
    \new Dynamics { s2\mf }
    \new Staff \with { \clef bass } <<
      \relative {
        \time 2/4
        \key f \major
        <<
          \relative a {
            a2 ~ a ~ a ~ a |
            a2 ~ a ~ a4 gs4 a2
            a2 ~ a ~ a ~ a ~ a ~ a ~ \hideNotes a s |
          }
          \\
          \relative d {
            d4( e f g e g f2) g4( f e d) e2( a4)( g) |
            f4( e f g e f g2) f4( d) g( e \oneVoice <d f a>2 ~ <d f a>)
          }
        >>
        \bar "|."
      }
    >>
  >>
  \layout {
     \context {
       \Score
       \editionID ##f thirty
     }
  }
}

%31
\score {
  \header {}
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff <<
      \relative a' {
        \time 6/8
        \key a \major
        \tempo "Allegretto"
        a4( gs8 a4 gs8) gs4.( e) a4( gs8 a4 e8) fs2. gs4( a8 b4 gs8) a2. gs4( a8 fs4 gs8) e2.
        a4( gs8 a4 bs8) gs4.( e) a4( gs8 a4 e8) fs2. gs4( a8 b4 gs8) a4( gs8 fs4 b8) a4. gs a2.
        \bar "|."
      }
    >>
    \new Staff \with { \clef bass } <<
      \relative {
        \time 6/8
        \key a \major
        <a cs>2.( <b d> cs d4)( e8 d4 cs8) <d e>2.
        <<
          \relative c' {
            e2. e4.( ds \oneVoice \parenthesize e4)( d8 cs4 b8) <cs a>2.( <d b> cs d4) e8( d4 cs8 <d e>2.) <cs e>4.( d) e2.( <cs a>)
          }
          \\
          \relative c' {
            cs4( b8 a4 cs8) b2.
          }
        >>
        \bar "|."
      }
    >>
  >>
  \layout {
     \context {
       \Score
       \editionID ##f thirtyone
     }
  }
}

%32
\score {
  \header {}
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff <<
      \relative {
        \time 6/8
        \key a \major
        \tempo "Allegro"
        cs''8( d e d cs b a2.) e'8( d cs b cs d) cs4.( b) d8( cs b cs d e b2.)
        a8( b cs b cs b a2.) b4.( cs8 b cs d cs d b4.)
        cs4.( d8 cs d e d e cs4.) d8( cs d \once \override Fingering.avoid-slur =#'inside  b cs d e2.) d8( cs d cs d b a2.)
        \bar "|."
      }
    >>
    \new Staff \with { \clef bass } <<
      \relative {
        \time 6/8
        \key a \major
        <<
          \relative e' { \voiceOne e2. s s s e2. e e s s s s s4. \once\hideNotes e ~ e2. ~ \once\hideNotes e2. ~ e2. e }
          \\
          \relative a { \voiceTwo a4.( b <cs e> <b d> <a cs> d e2.) b4.( a e'2.*1/2 d4. cs d <cs e>2.) d4.( cs b d) e4.( d cs e) b4.( d <cs e>2.) b4.( d cs) a }
        >>
        \bar "|."
      }
    >>
  >>
  \layout {
    \context {
      \Score
        \editionID ##f thirtytwo
     }
  }
}


%33
\score {
  \header {}
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff <<
      \relative {
        \time 2/4
        \key g \major
        \tempo "Allegro"
        <<
          {
          g'8( fs16 g a8 g) fs4( a) g8( a16 g fs8 g) d2 \oneVoice e8( fs16 g) e8( fs16 g) fs8( g16 a) fs8( g16 a) g8( e16 fs g8 e)
          fs2 g8( fs16 g a8 g) fs4( a) g8( a16 g fs8 g) e2 fs8( g16 a) fs8( g16 a) g8( fs16 g) e8( fs16 g) fs8( e16 fs) d8( a') g2
          }
          \\
          {
            d2 d d s s s s s d d d s s s s s
          }
        >>
        \bar "|."
      }
    >>
    \new Staff \with { \clef bass } <<
      \relative {
        \time 2/4
        \key g \major
        <g b>2( <a c> b <g b>) c( a) b4( a8 cs d2) <g, b>( <a c>) b( c) <c d> <b d>4( c) a( b8 c b d g,4)
        \bar "|."
      }
    >>
  >>
  \layout {
    \context {
      \Score
        \editionID ##f thirtythree
     }
  }
}


%34
\score {
  \header {}
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff <<
      \relative {
        \time 2/4
        \key f \major
        \tempo "Andante"
        <<
          {
          <f' a>4( <e g> f4.) <e g>8 <f a>4( <e g>8 <f ~ a> g2) g4.( fs8 g4 e) f16( e f a) d,8( e f2)
          }
          \\
          {
           s2 s s4 s8 \hideNotes f8 ~ \unHideNotes f4( e) d2 d4 e s s
          }
        >>
        \bar "|."
      }
    >>
    \new Staff \with { \clef bass } <<
      \relative {
        \time 2/4
        \key f \major
        f8( g16 a) bf8( c16 bf) a( bf c bf) a8( g) f16( g a bf) c8( b c2) bf16( a bf c) bf8( a) << { bf2 } \\ { \once\slurUp bf4( g) } >> a bf8( g <f a>2)
        \bar "|."
      }
    >>
  >>
  \layout {
    \context {
      \Score
        \editionID ##f thirtyfour
     }
  }
}


%35
\score {
  \header {}
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff = "Up" <<
      \relative {
        \time 3/4
        \key g \major
        \tempo "Adagio"
        <<
          {
          b'2( g4) fs2( a4) g2. ~ g4 fs g a2( gs4) a b2-> a2. ~ a4 g( a) \oneVoice b2( g4) fs2( a4) \voiceOne g2. ~ g4 a b a2( g4) \oneVoice fs2( a4) g2. ~ g
          }
          \\
          \relative g {
            \change Staff = "Down" \voiceOne g4( d' b) a( d c) b( d e d2.) \change Staff = "Up" \voiceTwo r4 e2 ~ e g4 ~ g fs e fs r r \change Staff = "Down" \voiceOne  g,( d' b) a( d c) b( d \change Staff = "Up" \voiceTwo  f e2.) r4 e2
          }
        >>
        \bar "|."
      }
    >>
    \new Dynamics {
       s2.\> s2.\> s2.\> s4 s4\! s4\< s4 s2\> s2.\< s2.\> s4\! s2\< s2.\> s2.\> s4\! s2\< s2. s2.\> s2.\!\tempo "rall." |
    }    \new Staff = "Down" \with { \clef bass } <<
      \relative {
        \time 3/4
        \key g \major
        \voiceTwo g2.( a b2 c4 b) \oneVoice a( b) c2( d4 c b cs d2.) ~ d4 r r \voiceTwo g,2.( a b c) \oneVoice r4 c2 r4 <c d>2 b4( d b g2.)
        \bar "|."
      }
    >>
  >>
  \layout {
    \context {
      \Score
        \editionID ##f thirtyfive
     }
  }
}


%36
\score {
  \header {}
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff = "Up" <<
      \relative {
        \time 4/4
        \key f \major
        \tempo "Moderato"
        a'8( g a bf c4 a) f1 bf8( a g a bf4 g) e1 f2. a4( d,2.) g4 e( \tempo "rall." f bf a <e g>1) \tempo "a tempo" << { a8( g a bf c4 a) } \\ { f4 } >> f1
        bf8( a g a bf4 g) e1 f2. a4( d,2.) \once\slurDown bf'4( <f a>2 <e g> f1)
        \bar "|."
      }
    >>
    \new Dynamics {
       s1\f
    }
    \new Staff = "Down" \with { \clef bass } <<
      \relative {
        \time 4/4
        \key f \major
        f1 a4( c f,2) g1 bf4( c g2) a8( bf c bf a2) bf8( a g a bf2) bf4( a g f c'1) f,1 a4( c f,2) g1 bf4( c g2) a8( bf c bf a2) bf8( a g a bf4) g c1( <a f>)
        \bar "|."
      }
    >>
  >>
  \layout {
    \context {
      \Score
        \editionID ##f thirtysix
     }
  }
}

%37
\score {
  \header {}
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff = "Up" <<
      \new Voice \relative {
        \time 4/4
        \key f \major
        \tempo "Allegro"
        c''8( bf a bf) c4 f, c'2( e,) f8( g a g) f4 a d,2. g4 |
        \voiceOne e4( c') c( a) g8( a bf g) c4( a) a4( g) d'( g,) \oneVoice <g e>1
        c8( bf a bf) c4 f,  c'2 e, f8( g a g) f4 a |
        d,2. g4 \voiceOne e( c') c( a) g8( a bf g) c4( a) g8( a g a) a4( g) \oneVoice f2. r4
        \bar "|."
      }
      \new Voice {
        \voiceTwo
        \relative c'{ s1*4 e4 r f r e r f r f r f r s1*5 e4 r f r e r f r f r e r}
      }
    >>
    \new Dynamics {
       s1\mp s1*3 s2\< s2\> s1\! s2\< s2\> s1\! s1\mf
    }
    \new Staff = "Down" \with { \clef bass } <<
      \relative {
        \time 4/4
        \key f \major
        <f a>4( c') <f, a>( c')
        <g bf>( c) <g bf>( c)
        <f, a>( c') <f, a>( c')
        bf( <a c> <g bf>) r
        <bf c> r <a c> r <bf c> r <a c> r
        <g b> r <g b> r c1 <f, a>4( c')  <f, a>4( c')
        <g bf!>( c) <g bf>( c) <f, a>( c') <f, a>( c')
        bf( <a c> <g bf>) r
        <bf c> r <a c> r <bf c> r <a c> r
        <bf d> r c r
        <a f>( c f,) r
        \bar "|."
      }
    >>
  >>
  \layout {
    \context {
      \Score
        \editionID ##f thirtyseven
     }
  }
}

%38
\score {
  \header {}
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff = "Up" <<
      \new Voice \relative {
        \time 4/4
        \key c \major
        \tempo "Allegretto con engergia"
        \change Staff = "Down"
        \stemNeutral
        e'8( f g e c d e f g
        \change Staff = "Up"
        \voiceOne
        a8[ b c]) e4( d) \oneVoice c8( b c d) b4 b  a4( b8 c <d g,>2)
        \change Staff = "Down"
        e,8( f g e c d e f g \change Staff = "Up" \voiceOne a8[ b c]) c4( b) \oneVoice b4( c8 d e4) e d8( c b a \once\showStaffSwitch \change Staff = "Down" g4) s |
        \change Staff = "Up" \once\slurDown b8( a g b d c b a \change Staff = "Down" s8 f e d) \change Staff = "Up" \voiceOne  bf'4( a) \once \slurDown f8( e d f a g f e
        \change Staff = "Down" \stemNeutral s8 c8 b a) \change Staff = "Up" \voiceTwo d2
        \oneVoice R1 r4 s4 \voiceOne b'4( a) g8( a b c) c4( b) c1
        \bar "|."
      }
      \new Voice \relative {
        s1 r8 s4. \voiceTwo b'2 s1*2 \oneVoice R1 r8 s4. \voiceTwo a2 \oneVoice s1 s2 r4 r4 s1 g8 r r4
        \voiceTwo g2 s1 d8 r r4 \voiceOne f4( e)
        \voiceTwo
        s1 s4 \change Staff = "Down" \oneVoice r4 \change Staff = "Up" \voiceTwo ds2 e f e1
      }
    >>
    \new Dynamics {
       s1\mf\< s2 s2\sf s8-> s4.\! s8-> s4.\! s8-> s4\< s8\! s2-> s4 s2.\< s2 s2\sf
       s1\< s2\> s2\! s1\f\< s2 s2\sf s1\< s2 s2\sf s1\< \tempo "rall." s2 s2\sf \tempo "a tempo" s2 s1
    }
    \new Staff = "Down" \with { \clef bass } <<
      \relative c' {
        \time 4/4
        \key c \major
        s1 s8 r8 r4 <f g>2
        <e g>2 <d f>4 r  |
        <c f>2 <b f'> s1 s8 r <e g>4 <ds fs>2
        <e g> <c g'> <d fs> s4 r R1 r8 s4. <cs e>2 d8 r r4 r2 |
        r8 s8*3 <gs, b>2
        c8( b a c e d c b) a([ c] \change Staff = "Up" \voiceOne e8[ a]) \change Staff = "Down" \oneVoice <c, fs,>2 <c g> <d g,> c1
        \bar "|."
      }
    >>
  >>
  \layout {
    \context {
      \Score
        \editionID ##f thirtyeight
     }
  }
}

%39
\score {
  \header {}
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff = "Up" <<
      \new Voice \relative c' {
        \time 2/4
        \key f \major
        \tempo "Allegro con spirito."
        \partial 8 r8
        r8 <f a>--[ <f a>--] r
        r8 <e bf'>--[ <e bf'>--] r
        r8 <e g>--[ <e g>--] r
        r8 <f a>--[ <f a>--] r
        r8 <f a>--[ <f a>--] r
        r8 <f g>--[ <f g>--] r
        r8 <f b>--[ <f b>--] r
        r8 <e c'>--[ <e c'>--] d'16([ c)]
        b8( a16 b) g8( a16 b)
        c8( b16 a) g8( b16 c)
        d8( b16 a) g8( d')
        e8([ c g)] d'16( c)
        b8( a16 b) g8( a16 b)
        c8( b16 a) g8( b16 c)
        d8( b16 a) g8( d')
        c4. r8
        r8 <f, a>--[ <f a>--] r
        r8 <e bf'>--[ <e bf'>--] r
        r8 <e g>--[ <e g>--] r
        r8 <f a>--[ <f a>--] r
        r8 <f a>--[ <f a>--] r
        r8 <f bf>--[ <f bf>--] r
        r8 <f c'>-- r <e bf' c>
        \partial 8*3 r8 <f a c>-- <f a>-- |
        \bar "|."
      }
    >>
    \new Dynamics {
      \partial 8 s8\mf
      s2*3 s8 s4.\< s2*3 s8 s8\! s8 s8\f s2 s8 s8\< s4 s2 s8\> s4. s2*3\mp s4. s8\f
      s2*3 s2*2\< s8 s8\! s8 s8\> s8 \tempo "rall." s8 s4 \partial 4. s4 s8\! |
    }
    \new Staff = "Down" \with { \clef bass } <<
      \relative c' {
        \time 2/4
        \key f \major
        \partial 8 a16( bf
        c4. a8)
        g4. g16( a |
        bf4. g8 |
        g4.) a16( bf
        c4. a8 |
        b4.) b16( c
        d4. g,8
        c4.) r8
        <g f'>4 r4
        <g e'>4 r4
        <g b f>4 r4
        <g c e>4 r4
        <g f'>2
        <g e'>2
        <g b f'>2
        <c e>4. a16( bf
        c4. a8
        g4.)
        g16( a bf4. g8
        f4.) a16( bf c4. cs8
        d4.) bf8
        << {\voiceTwo \slurUp a4( g f4.) } \\ { \voiceOne s2 r4 c'8 } >>
        \bar "|."
      }
    >>
  >>
  \layout {
    \context {
      \Score
        \editionID ##f thirtynine
     }
  }
}

%40
\score {
  \header {}
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff = "Up" <<
      \new Voice \relative g' {
        \time 2/4
        \key g \major
        \tempo "Allegro"
        \partial 8 g16( a
        b16 c b a b8) a16( b
        c16 d c b a8) g16( a
        b16 c c a) g8 b
        <fs a>4 ( \stemDown d'8) g,16( a | \stemNeutral b16 c b a g8) a16( b |
        c d c b a8) g16( a b16 c b a) g8 b  \set doubleSlurs = ##t  <fs a>4( g8)
        \set doubleSlurs = ##f b16([ a] g16 fs g a b8) b16( a fs e fs g a8) b16( a g fs g a b8 e,)
        \set doubleSlurs = ##t <e g>4( <ds fs>8) \set doubleSlurs = ##f b'16( a g fs g a b8) a16( g
        fs e fs g a8) b16( a g fs g a b8 e,) <ds fs>4 ~ <d fs>8\fermata g16[( a] | b16 c b a g8) a16( b
        c16 d c b a8) g16( a b16 c b a) g8 b | <fs a>4( d'8) g,16( a | b c b a g8) a16( b | c d c b a8) g16( a |
        b16 c b a) g8 b \set doubleSlurs = ##t \partial 4. <fs a>4( g8) |
        \bar "|."
      }
      \new Voice \relative g' {
         \voiceTwo
         \partial 8 s8
         s2*2 s4 g
         s2*15 s4 g
      }
    >>
    \new Dynamics {

    }
    \new Staff = "Down" \with { \clef bass } <<
      \relative c' {
        \time 2/4
        \key g \major
        \partial 8 r8
        <d g,>4 r | <d fs,> r | <d g,> r | d r | <d g,> r | <d fs,> r | <d g,> r |  \set doubleSlurs = ##t  <c d,>( <b g>8) r8
        <b e,>4 r | <b fs,> r| <b e,> r | b r| <b e,> r | <b fs,> r | <b e,> r | b <c d,>8\fermata r8 <b g>4 r <d fs,> r <d g,> r d r <d g,> r <d fs,> r <d g,> r \partial 4. <c d,>( <b g>8)
        \bar "|."
      }
    >>
  >>
  \layout {
    \context {
      \Score
        \editionID ##f forty
     }
  }
}

%41
\score {
  \header {}
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff = "Up" <<
      \new Voice \relative c' {
        \time 4/4
        \tempo "Allegretto"
        e8( f e f e f e d | c-> d c f c4) d8( e | f-> g f g f g f e | d e d e d4) c8( d |
        e8-> f e f e f e d | c-> d c d c4) d8( e | f-> e f e f-> e f d | c2) r |
        <c g'>2 r | <c e > r | <b d> r | <d f> r | <c e> r | <e g> r | <d g> <b g'> | <c e>1
        \bar "|."
      }
    >>
    \new Dynamics {
      s1*2\mp\< s4 s4\> s2 s2 s4\! s | s8 s8\< s4 s2 | s1*2\> s8 s8\! s4 s2 | s1\p\< s1 s1\> s1 s1\< s1\> s1 s4 s4.\!
    }
    \new Staff = "Down" \with { \clef bass } <<
      \relative c {
        \time 4/4
        \tempo "Allegretto"
        <c g'>2 r <e g> r <b g'> r | <b g'> r | <c g'> r | a' r | <d, a'> <g b> | r4 g( c,2) |
        e8->( f e f e f e d | c-> d c d c4) d8( e | \override Script.avoid-slur = #'inside f-> g f g f g f e | d-> e d e d4) c8( d |
        e8-> f e f e f e d | c-> d c d c4) d8( e | f-> e f e f-> e f d | c1)
        \bar "|."
      }
    >>
  >>
  \layout {
    \context {
      \Score
        \editionID ##f fortyone
     }
  }
}

%42
\score {
  \header {}
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff = "Up" <<
      \new Voice \relative c' {
        \time 6/8
        \key f \major
        \tempo "Moderato"
        r4 r8 <d f a > r r | r4 r8 <f a>4. | r4 r8 <e bf'>4. |
        r4 r8 <f a>4. | r4 r8 <d f a> r r | r4 r8 <e g c>4. |
        r4 r8 <f g b>4. | r4 r8 <e g c>4. | r4 r8 <d f a> r r |r4 r8 <f a>4. |
        r4 r8 <e bf'>4. | r4 r8 <f a>4. | r4 r8 << {<f a>4.} \\ {ef8 d r} >> |
        r4 r8 <d f bf>4. | <f a>4.( <e g> | f2.)
        \bar "|."
      }
    >>
    \new Dynamics {
      s4.\mp\< s4.\> s2.\! s2.\> s2.\> s4.\< s4.\> s2.*2\< s2.\!
      s2.*4\mf \tempo "rall." s2. s4.\>
      \once \override Hairpin.height = 1.25
      \once \override Hairpin.layer = -2
      \once \override TextScript.Y-offset = -0.625
      \once \override TextScript.whiteout-style = #'outline
      \once \override TextScript.whiteout = 1.5
      \once \override TextScript.vertical-skylines = ##f
      s4.-\markup { \fontsize #-0.5 \italic "dim." } s2. s2.\!
    }
    \new Staff = "Down" \with { \clef bass } <<
      \relative f {
        \time 6/8
        \key f \major
        f8( a c r c a | c2.--) | bf8( a g c4.) a8( \override Script.avoid-slur = #'inside g f c'4.) |
        f,8( a c r c a | g2.) | b8( a f d'4 g,8 c2.->---) |
        f,8( a c r c a | c2.) | bf8( a g c4.) | a8( g f c'4.) | f,8( a c r r c)
        bf2. c2. <a f>2.
        \bar "|."
      }
    >>
  >>
  \layout {
    \context {
      \Score
        \editionID ##f fortytwo
     }
  }
}


%43
\score {
  \header {}
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff = "Up" <<
      \new Voice \relative g' {
        \time 4/4
        \key g \major
        \tempo "Allegro"
        g8( a b g fs d e fs | g a b c d4) a | b8( e d e b a g b | a g fs e d2) | fs8( e d e fs g a b | c b c d) c4( b) | a8( b c a) g4( fs) g1 |
        \bar "|."
      }
    >>
    \new Dynamics {
      s1\f
    }
    \new Staff = "Down" \with { \clef bass } <<
      \relative f {
        \time 4/4
        \key g \major
        g2( a g fs g1) | a2 fs8( g a fs d1) | fs2( g) c( d) b4( d g,2)
        \bar "|."
      }
    >>
  >>
  \layout {
    \context {
      \Score
        \editionID ##f fortythree
     }
  }
}

%44
\score {
  \header {}
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff = "Up" <<
      \new Voice \relative c' {
        \time 2/4
        \tempo "Allegro"
        <c e g>2-> <c e g>-> <b f' g>-> <c e g>-> <c e g>-> <e g>-> <d fs>-> <d g>->
        f8[ e f g] e4 g f8[ e f g] e2 << { f8[ e f g] e4 g } \\ { c,2-> c-> } >> <b f' g>2 <c e g>2
        \bar "|."
      }
    >>
    \new Dynamics {
      s2*4\f s2*2\< s2\> s2*6\mf \tempo "rall." s2 s2 |

    }
    \new Staff = "Down" \with { \clef bass } <<
      \relative c {
        \time 2/4
          \overrideTimeSignatureSettings
            2/4        % timeSignatureFraction
            1/4        % baseMomentFraction
            2          % beatStructure
            #'()       % beamExceptions
        c8( d e f) g4( e) d8( f e d) c2
        c8( d e f) g4( a8 b) c8( b a c) b2
        <a c>( <g c>) <g b>( c4)( bf) a2 g4( e) d8( f e d) c2
        \bar "|."
      }
    >>
  >>
  \layout {
    \context {
      \Score
        \editionID ##f fortyfour
     }
  }
}

%45
\score {
  \header {}
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff = "Up" <<
      \new Voice \relative c' {
        \time 4/4
        \key d \major
        \tempo "Allegro con brio"
        R1 r4 <fs a>-- <fs a>-- r
        r <e g a>-> r <e g a>-> | r <cs g' a>-- <cs g' a>-- e8( fs
        g-> e a g fs4) e8( fs g2.->) a8( g) fs4( a) d,( gs) |
        <cs, a'>2.-> r4 | <d fs a>4-> r <c g' a>-> r | r <fs a>-- <fs a>-- r |
        r <e g a>-> r <e g a>-> | r <c g' a>-- <c g' a>-- r | <fs a>-> r <e fs as>-> r <d fs b>2-> <e b'>->
        << {a8 r r4 d4( cs <d fs,>2_>) } \\ { fs,8( g a b g2->)( \hideNotes fs) }>> r2
        \bar "|."
      }
    >>
    \new Dynamics {
      s1\mf\< s4\! s2.\! s2\> s2\> s4\! s2 s4\mp
      \once \override Hairpin.height = 1.25
      \once \override Hairpin.layer = -2
      s2\< s4
      \once \override TextScript.Y-offset = -0.5
      \once \override TextScript.whiteout-style = #'outline
      \once \override TextScript.whiteout = 1
      \once \override TextScript.vertical-skylines = ##f
      s4-\markup { \fontsize #-0.5 \italic "cresc." } s1*2 s1\! s1*3\f\< s1\! s1*2 \tempo "rall."
    }
    \new Staff = "Down" \with { \clef bass } <<
      \relative c {
        \time 4/4
        \key d \major
        d8( e fs g a b cs a d2.) cs8( b)
        cs4.( d8) b4.( cs8)
        a2.---> r4
        <a cs>2 d4( cs <b a>2 <a cs>2) d4( cs b2)
        a4( g f e) d8( e f g a b cs a | d2.) cs8( b)
        cs4.->( d8) b4.->( cs8) a2. b8( cs | d cs b d cs4) d8( cs | b2->) <g d'>-> | <a d>->
        \set doubleSlurs = ##t <a e'>( \set doubleSlurs = ##f d)( d,)
      }
    >>
  >>
  \layout {
    \context {
      \Score
        \editionID ##f fortyfive
     }
  }
}

%46
\score {
  \header {}
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff = "Up" <<
      \new Voice \relative e'' {
        \time 6/8
        \tempo "Allegro"
        e8( d c b c d | c4.) ~ c8 b a | g( a g f g f) | e4.( c'8) r r |
        e8( d c gs a b) | a( e' d c b a) | g( a g fs e fs | g2.)
        <b, f' g>4.-> <b d g>-> | <c g'>-> <c e>-> <cs e>-> <cs e>-> << { a'2.-> } \\ { d,4.( f) } >>
        a8( gs a c b a) | g( a b c d e) | <c d>4.-> <b g'>-> | c2.->
        \bar "|."
      }
    >>
    \new Dynamics {
      s2.*3\mp\< s4. s8\! s4 s2.\mf s2.*2\< s8 s4\! s4. s2.\p\< s2. s16 s16\! s4 s4. s2. s2.\mf\< s2. s\f
    }
    \new Staff = "Down" \with { } <<
      \relative c' {
        \time 6/8
        <c g'>4.( <f g> | <e g> <c e>) |
        \clef bass <b d>4.( <g b> c4.) ~ c8 r r |
        <a e'>4.( <d e> | <c e>) r4 r8 | <d, b'>4.( <d c'> <g b>) g |
        g8( d e f g f) | e4.( g) | a8( e f g a g) | f4.( a) |
        <fs ds'>4. r | <g e'> r|| <g f'>-> <g f'>-> | <c e>2.->
      }
    >>
  >>
  \layout {
    \context {
      \Score
        \editionID ##f fortysix
     }
  }
}

%47
\score {
  \header {}
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff = "Up" <<
      \new Voice \relative b' {
        \time 2/4
        \key g \major
        \tempo "Allegro con brio"
        \partial 8 b16( a | g-> a b c d b c a | g4.) fs16( e | \once\override Script.avoid-slur = #'inside d-> e fs g a fs g e | d4.) d16( e |
        fs16 d e fs) g8->( a16 b) | c( a b c) b8->( a16 g) | fs16( g a b) a( d b cs | d4.) b16( a | g16-> a b c d b c a | g4.) fs16( e |
        \once\override Script.avoid-slur = #'inside d16-> e fs g a fs g e d4.) d16( e f16-> e f g f a g f) | e->( d e f e g fs e) |
        d16( e fs g) fs( g a fs) | \partial 4. g4.-> |
        \bar "|."
      }
    >>
    \new Dynamics {
      \partial 8 s8\mp s2 s4. s8\< s2 s4 s4\! s2*3\< s8\f\> s4\! s8\f s2*4
      \override DynamicTextSpanner.style = #'none s2\dim s2\> s2\f\< s16 s16\! s4
    }
    \new Staff = "Down" \with { \clef bass } <<
      \relative c' {
        \time 2/4
        \key g \major
        \partial 8 r8 | R2 | r8 <b d>-- <g b>-- r |
        R2 | r8 <fs a>-- <d fs>-- r | c'4( b8) r | \once\slurDown <fs d'>4( ~ <g d'>8) r |
        <a d>8 r r <a g'> | \autoBeamOff <d fs>8 d16-. r d,-. r r8 | \autoBeamOn R2 | | r8 <b' d>->-- <g b>->-- r |
        R2 | r8 <fs a>8->-- <d fs>->-- r | <b g'>4 r | <c g'>8 r <cs bf'> r | <d b'> r <d c'> r | \partial 4. { <g b> d([ g,]) } |
      }
    >>
  >>
  \layout {
    \context {
      \Score
        \editionID ##f fortyseven
     }
  }
}

%48
\score {
  \header {}
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff = "Up" <<
      \new Voice \relative e'' {
        \time 4/4
        \tempo "Allegro con moto"
        \partial 4 e8( f | g fs e d c4) d8( c | b c b a g4) b8( a | g2.) d'8( b | g2.) c8( d | e d c b) a4( b8 c) | d2.
        e8( c | a4) c8( a fs4) d'8( b g2.) r4 | r2 r8 e8 f g | f4 <f c'>-- <f b>-- r |
        r2 r8 a bf c | d4 <bf f'>-- <bf e>-- f'8( g | a-> g f e) d4->( e8 f | <c g'>2->)( c4) d8( e | f e d c) b4( g') |
        \partial 2. c,2.->
        \bar "|."
      }
    >>
    \new Dynamics {

    }
    \new Staff = "Down" \with { \clef bass } <<
      \relative c' {
        \time 4/4
        \partial 4 r4 | <c e>-> r <e g>-> r | <d f>-- <c f>-- <b f'>-- r | r4 <b f'>-- <b f'>-- r |
        r <c e>-- <c e>-- r | <c g'>2-> <c fs>-> | b4( d g) r | <c, e>-> r <c d,>-> r |
        <b g>2. c8( a | g-> a b c d4*1/2 r8 r4 | r4) <af d>-- <g d'>-- e'8( d | c-> d e f g r r4 |
        \clef treble r4) <df g>-- <c g'>-- r | <f a>2-> <f b>-> | e2( a4) r | <d, a'>-> r <g, f'>-> r \partial 2. <c e>2.->
        \bar "|."
      }
    >>
  >>
  \layout {
    \context {
      \Score
        \editionID ##f fortyeight
     }
  }
}

%49
\score {
  \header {}
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff = "Up" <<
      \new Voice \relative e' {
        \time 6/8
        \key g \major
        \tempo "Moderato con brio"
        r4. r8 e g | r4. <g b>-- | r r8 e g | r4. <g b>-- | r4. << { a8 g a } \\ { e4. } >> |
        r4. <a c>-- <g b>-> <g a>-> <fs a>2.->
        r4. f8 gs b
        r4. <a c>--
        r4. f8 gs b
        r4. <a c>4.--
        r4. d,8 fs a
        <g b>4.-- r4.
        <e a>2.->
        <fs b>2.->
        r4. g8 a b
        c8( a fs r4.)
        r4. g8 a b
        c8 a fs r4.
        R2.
        <g b>->
        <g b,>-> ~ <g b,>
        \bar "|."
      }
    >>
    \new Dynamics {
      s1\f
    }
    \new Staff = "Down" \with { \clef bass } <<
      \relative g {
        \time 6/8
        \key g \major
        \once\override Slur.extra-offset = #'(0 . 1)
        \once \shape #'((0 . -1)(-1 . 1)(4 . -3)(3 . 3.5)) Slur
        g8( b d cs r4) | <d g,>4.-> r4.  ||
        g,8( b d cs r4)
        <g d'>4.-> r
        g8( a cs r4.)
        <g d'>4.-> r
        <g d'>4.-> <a cs>->
        d2.->
        a8( c e r4.)
        <a, e'>4.-> r
        a8( c e r4.)
        <a, e'>4. r
        fs8( a c r4.)
        <g d'>4. r
        c2.->
        <d, c'>2.->
        g8( b d r4.)
        r4. d8 c a
        g8( b d r4.)
        r4.( d8 c a)
        g2.->
        <g d'>->
        <g, d'>2.-> ~ <g d'>
        \bar "|."
      }
    >>
  >>
  \layout {
    \context {
      \Score
        \editionID ##f fortynine
     }
  }
}


%50
\score {
  \header { piece = "For Pleasure." }
  \new PianoStaff \with { instrumentName = #(score-number) } <<
    \new Staff = "Up" <<
      \new Voice \relative c'' {
        \time 3/4
        \key a \major
        \tempo \markup \column { \line { "Tempo di Valse" } \line { "Con grazia" } }
        cs8( b a b cs d | e2)( a4) | gs8( a fs gs e fs | d2)( cs4) | b8( a gs a b gs | a4.) e'8 cs a |
        fs2 b4 | r <gs e'> <gs e'> | r <e gs> <e gs> |
        r4 <e a> <e a> | r <es cs'> <es cs'> | r <fs cs'> <fs cs'> | r <ds b'> <ds b'> | r <e b'> <e gs>
        r4 <e a> \set doubleSlurs = ##t <ds fs>( | e8) r e'4 e \set doubleSlurs = ##f | cs8( b a b cs d | e2)( a4) | gs8( a fs gs e fs | d2)( cs4) |
        b8( a gs a b gs) | a4.( e'8 cs a | fs4) d'4 gs,( | a2.)

        \bar "|."
      }
    >>
    \new Dynamics {
      s2.\mf\< s2 s4\> s2. s2.\! s2.*3\< s2.\! s2.\> s2.\! s2.\> s2.\! s2.*3\> s2.\! s2.*2\< s2.\> s2 s4\! s2.*3\< s16 s16\! s8 s2 |
    }
    \new Staff = "Down" \with { \clef bass } <<
      \new Voice \relative e' {
        \time 3/4
        \key a \major
        \voiceOne
        r4 e2 r4 e2 r4 e2 r4 e2 r4 e2 r4 e2 r4 e4 ds e2.
        \oneVoice d4.->( cs8 b d | cs2.->) | b4.( a8 gs b | a2.->)
        a4.( gs8 fs a gs2->)( cs4) | fs,2-> \set doubleSlurs = ##t <b, a'>4( <e gs>8) r e'4-- e-- |
        \voiceOne r4 e2 r4 e2 r4 e2 r4 e2 r4 e2 r4 e2
        \oneVoice d4 b <e, d'>( <a cs>2.)
        \bar "|."
      }
      \new Voice \relative a {
        \voiceTwo
        a2. cs b gs d' cs b e
        s2.*8 a,2. cs b  gs ds' cs
      }
    >>
  >>
  \layout {
    \context {
      \Score
        \editionID ##f fifty
     }
  }
}
