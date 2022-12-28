;;; modus-vivendi-theme.el --- Elegant, highly legible and customizable dark theme -*- lexical-binding:t -*-

;; Copyright (C) 2019-2022  Free Software Foundation, Inc.

;; Author: Protesilaos Stavrou <info@protesilaos.com>
;; Maintainer: Modus-Themes Development <~protesilaos/modus-themes@lists.sr.ht>
;; URL: https://git.sr.ht/~protesilaos/modus-themes
;; Mailing-List: https://lists.sr.ht/~protesilaos/modus-themes

;; This file is part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; The Modus themes conform with the highest standard for
;; color-contrast accessibility between background and foreground
;; values (WCAG AAA).  Please refer to the official Info manual for
;; further documentation (distributed with the themes, or available
;; at: <https://protesilaos.com/emacs/modus-themes>).

;;; Code:



(eval-and-compile
  (unless (and (fboundp 'require-theme)
               load-file-name
               (equal (file-name-directory load-file-name)
                      (expand-file-name "themes/" data-directory))
               (require-theme 'modus-themes t))
    (require 'modus-themes))

  (deftheme modus-vivendi
    "Elegant, highly legible and customizable dark theme.
Conforms with the highest legibility standard for color contrast
between background and foreground in any given piece of text,
which corresponds to a minimum contrast in relative luminance of
7:1 (WCAG AAA standard).")

  (defconst modus-vivendi-palette
    '(
;;; Basic values

      (bg-main          "#000000")
      (bg-dim           "#1e1e1e")
      (fg-main          "#ffffff")
      (fg-dim           "#989898")
      (fg-alt           "#c6daff")
      (bg-active        "#535353")
      (bg-inactive      "#303030")
      (border           "#646464")

;;; Common accent foregrounds

      (red             "#ff5f59")
      (red-warmer      "#ff6b55")
      (red-cooler      "#ff7f9f")
      (red-faint       "#ff9580")
      (red-intense     "#ff5f5f")
      (green           "#44bc44")
      (green-warmer    "#70b900")
      (green-cooler    "#00c06f")
      (green-faint     "#88ca9f")
      (green-intense   "#44df44")
      (yellow          "#d0bc00")
      (yellow-warmer   "#fec43f")
      (yellow-cooler   "#dfaf7a")
      (yellow-faint    "#d2b580")
      (yellow-intense  "#efef00")
      (blue            "#2fafff")
      (blue-warmer     "#79a8ff")
      (blue-cooler     "#00bcff")
      (blue-faint      "#82b0ec")
      (blue-intense    "#338fff")
      (magenta         "#feacd0")
      (magenta-warmer  "#f78fe7")
      (magenta-cooler  "#b6a0ff")
      (magenta-faint   "#caa6df")
      (magenta-intense "#ff66ff")
      (cyan            "#00d3d0")
      (cyan-warmer     "#4ae2f0")
      (cyan-cooler     "#6ae4b9")
      (cyan-faint      "#9ac8e0")
      (cyan-intense    "#00eff0")

;;; Uncommon accent foregrounds

      (amaranth   "#f0636f")
      (amber      "#df7f3f")
      (turquoise  "#43c39f")
      (azure      "#5faaff")
      (purple     "#af89ff")
      (amethyst   "#e085ef")
      (rose       "#ef69af")
      (rust       "#cf6f5c")
      (gold       "#bf8f5b")
      (olive      "#8ab960")
      (slate      "#669fbf")
      (indigo     "#9080d9")
      (maroon     "#cf7aa7")
      (pink       "#e0a5b4")

;;; Common accent backgrounds

      (bg-red      "#9d1f1f")
      (bg-green    "#2f822f")
      (bg-yellow   "#7a6100")
      (bg-blue     "#1640b0")
      (bg-magenta  "#7030af")
      (bg-cyan     "#2266ae")

      (bg-red-subtle      "#620f2a")
      (bg-green-subtle    "#00422a")
      (bg-yellow-subtle   "#4a4000")
      (bg-blue-subtle     "#242679")
      (bg-magenta-subtle  "#552f5f")
      (bg-cyan-subtle     "#004065")

      (bg-red-nuanced     "#2c0614")
      (bg-green-nuanced   "#001904")
      (bg-yellow-nuanced  "#221000")
      (bg-blue-nuanced    "#0f0e39")
      (bg-magenta-nuanced "#230631")
      (bg-cyan-nuanced    "#041529")

;;; Graphs

      (bg-graph-red-0     "#b52c2c")
      (bg-graph-red-1     "#702020")
      (bg-graph-green-0   "#4fd100")
      (bg-graph-green-1   "#007800")
      (bg-graph-yellow-0  "#f1e00a")
      (bg-graph-yellow-1  "#b08600")
      (bg-graph-blue-0    "#2fafef")
      (bg-graph-blue-1    "#1f2f8f")
      (bg-graph-magenta-0 "#bf94fe")
      (bg-graph-magenta-1 "#5f509f")
      (bg-graph-cyan-0    "#47dfea")
      (bg-graph-cyan-1    "#00808f")

;;; Special purpose

      (bg-completion       "#2f447f")
      (bg-hover            "#004f70")
      (bg-hover-secondary  "#654a39")
      (bg-hl-line          "#2f3849")
      (bg-paren-match      "#2f7f9f")
      (bg-paren-expression "#453040")
      (bg-region           "#5c5c5c")
      (bg-region-subtle    "#4f1c2f")
      (bg-prompt           "#5f3a60")

      (bg-char-0 "#0050af")
      (bg-char-1 "#7f1f7f")
      (bg-char-2 "#625a00")

      (bg-mode-line-active        "#505050")
      (fg-mode-line-active        "#ffffff")
      (border-mode-line-active    "#959595")
      (bg-mode-line-inactive      "#2d2d2d")
      (fg-mode-line-inactive      "#969696")
      (border-mode-line-inactive  "#606060")

      (modeline-err     "#ffa9bf")
      (modeline-warning "#dfcf43")
      (modeline-info    "#9fefff")

      (bg-tab-bar      "#313131")
      (bg-tab-current  "#000000")
      (bg-tab-other    "#545454")

;;; Diffs

      (bg-added           "#00381f")
      (bg-added-faint     "#002910")
      (bg-added-refine    "#034f2f")
      (bg-added-intense   "#237f3f")
      (fg-added           "#a0e0a0")
      (fg-added-intense   "#80e080")

      (bg-changed         "#363300")
      (bg-changed-faint   "#2a1f00")
      (bg-changed-refine  "#4a4a00")
      (bg-changed-intense "#8a7a00")
      (fg-changed         "#efef80")
      (fg-changed-intense "#c0b05f")

      (bg-removed         "#4f1119")
      (bg-removed-faint   "#380a0f")
      (bg-removed-refine  "#781a1f")
      (bg-removed-intense "#b81a1f")
      (fg-removed         "#ffbfbf")
      (fg-removed-intense "#ff9095")

;;;; Mappings

;;;;; General mappings

      (fringe bg-dim)
      (cursor fg-main)

      (keybind blue-cooler)
      (name magenta)
      (identifier yellow-faint)
      (prompt cyan-cooler)

      (err red)
      (warning yellow-warmer)
      (info cyan-cooler)

      (underline-err red-intense)
      (underline-warning yellow)
      (underline-note cyan)

;;;;; Code mappings

      (builtin magenta-warmer)
      (comment fg-dim)
      (constant blue-cooler)
      (docstring cyan-faint)
      (docmarkup magenta-faint)
      (fnname magenta)
      (keyword magenta-cooler)
      (preprocessor red-cooler)
      (string blue-warmer)
      (type cyan-cooler)
      (variable cyan)
      (rx-construct green-cooler)
      (rx-backslash magenta)

;;;;; Accent mappings

      (fg-accent-0 blue-cooler)
      (fg-accent-1 magenta-warmer)
      (fg-accent-2 cyan-cooler)
      (fg-accent-3 yellow)
      (bg-accent-0 bg-blue-subtle)
      (bg-accent-1 bg-magenta-subtle)
      (bg-accent-2 bg-cyan-subtle)
      (bg-accent-3 bg-yellow-subtle)

;;;;; Button mappings

      (fg-button-active fg-main)
      (fg-button-inactive fg-dim)
      (bg-button-active bg-active)
      (bg-button-inactive bg-dim)

;;;;; Date mappings

      (date-common cyan)
      (date-deadline red)
      (date-event fg-alt)
      (date-holiday magenta)
      (date-now fg-main)
      (date-scheduled yellow-warmer)
      (date-weekday cyan)
      (date-weekend red-faint)

;;;;; Line number mappings

      (fg-line-number-inactive fg-dim)
      (fg-line-number-active fg-main)
      (bg-line-number-inactive bg-dim)
      (bg-line-number-active bg-active)

;;;;; Link mappings

      (fg-link blue-warmer)
      (bg-link unspecified)
      (underline-link blue-warmer)

      (fg-link-symbolic cyan)
      (bg-link-symbolic unspecified)
      (underline-link-symbolic cyan)

      (fg-link-visited magenta)
      (bg-link-visited unspecified)
      (underline-link-visited magenta)

;;;;; Mail mappings

      (mail-cite-0 blue-warmer)
      (mail-cite-1 yellow-cooler)
      (mail-cite-2 cyan-cooler)
      (mail-cite-3 red-cooler)
      (mail-part blue)
      (mail-recipient magenta-cooler)
      (mail-subject magenta-warmer)
      (mail-other magenta-faint)

;;;;; Prose mappings

      (prose-block fg-dim)
      (prose-code cyan-cooler)
      (prose-done green)
      (prose-macro magenta-cooler)
      (prose-metadata fg-dim)
      (prose-metadata-value fg-alt)
      (prose-table fg-alt)
      (prose-tag magenta-faint)
      (prose-todo red)
      (prose-verbatim magenta-warmer)

;;;;; Heading mappings

      (fg-heading-0 cyan-cooler)
      (fg-heading-1 fg-main)
      (fg-heading-2 yellow-faint)
      (fg-heading-3 blue-faint)
      (fg-heading-4 magenta)
      (fg-heading-5 green-faint)
      (fg-heading-6 red-faint)
      (fg-heading-7 cyan-faint)
      (fg-heading-8 fg-dim)

      (bg-heading-0 unspecified)
      (bg-heading-1 unspecified)
      (bg-heading-2 unspecified)
      (bg-heading-3 unspecified)
      (bg-heading-4 unspecified)
      (bg-heading-5 unspecified)
      (bg-heading-6 unspecified)
      (bg-heading-7 unspecified)
      (bg-heading-8 unspecified)

      (overline-heading-0 unspecified)
      (overline-heading-1 unspecified)
      (overline-heading-2 unspecified)
      (overline-heading-3 unspecified)
      (overline-heading-4 unspecified)
      (overline-heading-5 unspecified)
      (overline-heading-6 unspecified)
      (overline-heading-7 unspecified)
      (overline-heading-8 unspecified))
    "The entire palette of the `modus-vivendi' theme.
Color values have the form (COLOR-NAME HEX-VALUE) with the former
as a symbol and the latter as a string.

Semantic color mappings have the form (MAPPING-NAME COLOR-NAME)
with both as symbols.  The latter is a color that already exists
in the palette and is associated with a HEX-VALUE.")

  (defcustom modus-vivendi-palette-overrides nil
    "Overrides for `modus-vivendi-palette'.

Mirror the elements of the aforementioned palette, overriding
their value.

For overrides that are shared across all of the Modus themes,
refer to `modus-themes-common-palette-overrides'.

Theme-specific overrides take precedence over shared overrides.
The idea of common overrides is to change semantic color
mappings, such as to make the cursor red.  Wherea theme-specific
overrides can also be used to change the value of a named color,
such as what hexadecimal RGB value the red-warmer symbol
represents."
    :group 'modus-themes
    :package-version '(modus-themes . "4.0.0")
    :version "30.1"
    :type '(repeat (list symbol (choice symbol string)))
    :set #'modus-themes--set-option
    :initialize #'custom-initialize-default
    :link '(info-link "(modus-themes) Palette overrides"))

  (modus-themes-theme modus-vivendi
                      modus-vivendi-palette
                      modus-vivendi-palette-overrides)

  (provide-theme 'modus-vivendi))

;;;###theme-autoload
(put 'modus-vivendi 'theme-properties '(:background-mode dark :kind color-scheme :family modus))

;;; modus-vivendi-theme.el ends here
