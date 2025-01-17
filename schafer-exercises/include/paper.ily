\version "2.24.4"

\paper {
% Paper size and margins
  #(set-paper-size "arch a")
  left-margin   = 0.5\in
  right-margin  = 0.5\in
  top-margin    = 0.5\in
  bottom-margin = 0.5\in
  indent        = 0.25\in
% Other paper variables
  tagline = ##f
  ragged-last = ##f
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  first-page-number  = ##t
% Expilcit font setting needed for svg output
  #(define fonts
    (set-global-fonts
      #:music "emmentaler"            ;default
      #:brace "emmentaler"            ;default
      #:roman "TeX Gyre Bonum"        ;"Tex Gyre Schola"
      #:sans  "TeX Gyre Heros"        ;default
      #:typewriter "TeX Gyre Cursor"  ;default
      #:factor (/ staff-height pt 20) ;unnecessary if the staff size is default
    )
  )
% Titling
  scoreTitleMarkup = \markup {
    \fill-line {
      \null
    }
  }
  bookTitleMarkup = \markup {
    \vspace #4.77
    \column {
      \fill-line {
          \bold
          \abs-fontsize #32
          \fromproperty #'header:title
      }
      \fill-line {
          \italic
          \bold
          \abs-fontsize #16
          \fromproperty #'header:subtitle
      }
      \fill-line {
          \italic
          \abs-fontsize #8
          \fromproperty #'header:dedication
      }
    }
  }
  oddHeaderMarkup = \markup {
    \fill-line{
      \line {
        \abs-fontsize #10
        \override #'(font-features . ("smcp" "onum"))
          \fromproperty #'header:titleRunner

        \abs-fontsize #8
        \override #'(font-features . ("smcp" "onum"))
          \fromproperty #'header:piece
      }
      \null
      \line {
          \abs-fontsize #8
            \override #'(font-features . ("smcp" "onum"))
            \fromproperty #'header:opus
          \abs-fontsize #10
            \override #'(font-features . ("smcp" "onum"))
            \fromproperty #'header:composer
          \if \should-print-page-number
            \bold
            \abs-fontsize #10
            \fromproperty #'page:page-number-string
      }
    }
  }
  evenHeaderMarkup = \markup {
    \fill-line{
      \line {
        \if \should-print-page-number
            \bold
            \abs-fontsize #10
            \fromproperty #'page:page-number-string
        \abs-fontsize #10
        \override #'(font-features . ("smcp" "onum"))
          \fromproperty #'header:titleRunner

        \abs-fontsize #8
        \override #'(font-features . ("smcp" "onum"))
          \fromproperty #'header:piece
      }
      \null
      \line {
          \abs-fontsize #8
            \override #'(font-features . ("smcp" "onum"))
            \fromproperty #'header:opus
          \abs-fontsize #10
            \override #'(font-features . ("smcp" "onum"))
            \fromproperty #'header:composer
      }
    }
  }
% Align top and bottom lines across pages
  % (User Variable)
  % Distance from outer staff line to paper edge
  fist-staff-margin   = 3.0\in
  top-staff-margin    = 1.0\in
  bottom-staff-margin = 1.0\in
  % Align Top Staffs
    % set the basic distance of the top staff from the top margin
    % this formula takes into account the above settings, the current staff size, and adds
    % 2 staff spaces, since the reference position of the staff is its center line
    top-system-spacing.basic-distance   = #(+ (/ (- top-staff-margin top-margin) staff-space) 2)
    top-system-spacing.minimum-distance = 0
    % set large negative padding in order to ignore the skyline
    top-system-spacing.padding          = -50
    % do not stretch the distance
    top-system-spacing.stretchability   = 0
  % Align bottom Staffs
    % set the basic distance of the top staff from the top margin
    % this formula takes into account the above settings, the current staff size, and adds
    % 2 staff spaces, since the reference position of the staff is its center line
    last-bottom-spacing.basic-distance   = #(+ (/ (- bottom-staff-margin bottom-margin) staff-space) 2)
    last-bottom-spacing.minimum-distance = 0
    % set large negative padding in order to ignore the skyline
    last-bottom-spacing.padding          = -50
    % do not stretch the distance
    last-bottom-spacing.stretchability   = 0
  % First system (space for title)
    % markup-system-spacing.basic-distance   = #(+ (/ (- fist-staff-margin top-margin) staff-space) 2)
    % markup-system-spacing.minimum-distance = 0
    % markup-system-spacing.padding          = -50
    % markup-system-spacing.stretchability   = 0
    %
    top-markup-spacing.basic-distance   = 0
    top-markup-spacing.minimum-distance = 0
    top-markup-spacing.padding          = -50
    top-markup-spacing.stretchability   = 0
    %
    markup-markup-spacing.basic-distance = 0
    markup-markup-spacing.minimum-distance = 0
    markup-markup-spacing.padding = -50
    markup-markup-spacing.stretchability = 0
}
